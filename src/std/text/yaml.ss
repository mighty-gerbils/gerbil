;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; yaml support
package: std/text

(import :gerbil/gambit/hvectors
        :std/sugar
        :std/error
        :std/pregexp
        :std/text/libyaml)
(export yaml-load yaml-dump)

(def (yaml-load fname)
  (cond
   ((open_yaml_input_file (path-normalize fname))
    => (lambda (file)
         (try (yaml-parse-file file)
           (finally (close_yaml_file file)))))
   (else
    (error "Cannot open yaml input file" fname))))

(def (yaml-parse-file file)
  (let* ((parser (make_yaml_parser))
         (_      (yaml_parser_initialize parser))
         (_      (yaml_parser_set_input_file parser file))
         (event  (make_yaml_event)))
    (try (yaml-parse parser event)
      (finally (yaml_parser_delete parser)))))

(def (yaml-parse parser event)
  (def anchors (make-hash-table))

  (def (parse)
    (let (r (yaml_parser_parse parser event))
      (when (zero? r)
        ;; TODO provide error context
        (raise-io-error 'yaml-load "LibYAML parse error" (yaml_parser_error parser)))))

  (def (stream-start)
    (let* ((_ (parse))
           (t (yaml_event_type event)))
      (cond
       ((eq? t YAML_STREAM_START_EVENT)
        (yaml_event_delete event)
        (read-stream))
       ((eq? t YAML_NO_EVENT)
        (stream-start))
       (else
        (raise-io-error 'yaml-load "stream-start: unexpected event" t)))))

  (def (read-stream)
    (let lp ((docs []))
      (let* ((_ (parse))
             (t (yaml_event_type event)))
        (cond
         ((eq? t YAML_STREAM_END_EVENT)
          (reverse docs))
         ((eq? t YAML_DOCUMENT_START_EVENT)
          (yaml_event_delete event)
          (lp (cons (read-node) docs)))
         ((eq? t YAML_DOCUMENT_END_EVENT)
          (lp docs))
         ((eq? t YAML_NO_EVENT)
          (lp docs))
         (else
          (raise-io-error 'yaml-load "read-stream: unexpected event" t))))))

  (def end-token '#(end))
  
  (def (read-node (end-event-t #f))
    (let* ((_ (parse))
           (t (yaml_event_type event)))
      (cond
       ((eq? t YAML_ALIAS_EVENT)
        (let* ((anchor (yaml_event_anchor event))
               (_      (yaml_event_delete event)))
          (if (hash-key? anchors anchor)
            (hash-ref anchors anchor)
            (raise-io-error 'yaml-load "read-node: undefined alias" anchor))))
       
       ((eq? t YAML_SCALAR_EVENT)
        (let* ((anchor (yaml_event_anchor event))
               (tag    (yaml_event_tag event))
               (len    (yaml_event_scalar_length event))
               (data   (make-u8vector len))
               (_      (yaml_event_scalar_bytes event data))
               (_      (yaml_event_delete event))
               (value (parse-scalar data tag)))
          (when anchor
            (hash-put! anchors anchor value))
          value))
       
       ((eq? t YAML_SEQUENCE_START_EVENT)
        (let* ((anchor (yaml_event_anchor event))
               (tag    (yaml_event_tag event))
               (_      (yaml_event_delete event))
               (value  (read-sequence tag)))
          (when anchor
            (hash-put! anchors anchor value))
          value))
       
       ((eq? t YAML_MAPPING_START_EVENT)
        (let* ((anchor (yaml_event_anchor event))
               (tag    (yaml_event_tag event))
               (_      (yaml_event_delete event))
               (value  (read-mapping tag)))
          (when anchor
            (hash-put! anchors anchor value))
          value))

       ((eq? t end-event-t)
        end-token)
       
       ((eq? t YAML_NO_EVENT)
        (read-node))
       
       (else
        (raise-io-error 'yaml-load "read-object: unexpected event" t)))))

  (def (read-sequence tag)
    (let lp ((seq []))
      (let (next (read-node YAML_SEQUENCE_END_EVENT))
        (if (eq? next end-token)
          (reverse seq)
          (lp (cons next seq))))))

  (def (read-mapping tag)
    (let (ht (make-hash-table))
      (let lp ()
        (let (key (read-node YAML_MAPPING_END_EVENT))
          (if (eq? key end-token)
            ht
            (let (value (read-node))
              (hash-put! ht key value)
              (lp)))))))

  (def (parse-scalar data tag)
    (let (str (bytes->string data))
      (cond
       ((hash-get yaml-scalar-tags tag)
        => (cut <> str))
       ((or (pregexp-match rx-scalar-decimal str)
            (pregexp-match rx-scalar-float str))
        (string->number str))
       ((pregexp-match rx-scalar-octal str)
        (string->number (substring str 1 (string-length str)) 8))
       ((pregexp-match rx-scalar-hex str)
        (string->number (substring str 2 (string-length str)) 16))
       ((equal? ".inf" str) +inf.0)
       ((equal? "-.inf" str) -inf.0)
       ((equal? ".NaN" str) +nan.0)
       ((equal? "true" str) #t)
       ((equal? "false" str) #f)
       ((equal? "null" str) #!void)
       (else str))))
  
  (stream-start))

(def rx-scalar-decimal
  (pregexp "^[-+]?[0-9]+$"))
(def rx-scalar-float
  (pregexp "^[-+]?[0-9]*[.][0-9]+([eE][-+]?[0-9]+)?$"))
(def rx-scalar-octal
  (pregexp "^0o[0-7]+$"))
(def rx-scalar-hex
  (pregexp "^0x[0-9a-fA-F]+$"))

(def (yaml-string->float str)
  (cond
   ((equal? str ".inf")  +inf.0)
   ((equal? str "-.inf") -inf.0)
   ((equal? str ".nan") +nan.0)
   (else
    (string->number str))))

(def yaml-scalar-tags
  (hash
   ("!!null"  void)
   ("!!bool"  (cut equal? <> "true"))
   ("!!int"   string->number)
   ("!!float" yaml-string->float)))
 
(def (yaml-dump obj name)
  (error "XXX Implement me")
  )
