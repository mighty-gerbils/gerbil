;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; yaml support

(import :std/sugar
        :std/error
        :std/iter
        :std/pregexp
        :std/misc/list-builder
        :std/text/utf8
        :std/text/libyaml)
(export yaml-key-format yaml-load yaml-load-string yaml-dump)

(def yaml-key-format
  (make-parameter values))

(def (yaml-load fname)
  (cond
   ((open_yaml_input_file (path-normalize fname))
    => (lambda (file)
         (try (yaml-parse-file file)
           (finally (close_yaml_file file)))))
   (else
    (error "Cannot open yaml input file" fname))))

(def (yaml-load-string str)
  (cond
   ((yaml_strdup str)
    => (lambda (xstr)
         (try (yaml-parse-string xstr)
              (finally (yaml_strfree xstr)))))
   (else
    (error "Failed to allocate memory for string" str))))

(def (yaml-parse-file file)
  (yaml-parse-input file yaml_parser_set_input_file))

(def (yaml-parse-string str)
  (yaml-parse-input str yaml_parser_set_input_string))

(def (yaml-parse-input file parser-set-input!)
  (let* ((parser (make_yaml_parser))
         (_      (yaml_parser_initialize parser))
         (_      (parser-set-input! parser file))
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
    (with-list-builder (push!)
      (let lp ()
        (let* ((_ (parse))
               (t (yaml_event_type event)))
          (cond
           ((eq? t YAML_STREAM_END_EVENT))
           ((eq? t YAML_DOCUMENT_START_EVENT)
            (yaml_event_delete event)
            (push! (read-node))
            (lp))
           ((eq? t YAML_DOCUMENT_END_EVENT)
            (lp))
           ((eq? t YAML_NO_EVENT)
            (lp))
           (else
            (raise-io-error 'yaml-load "read-stream: unexpected event" t)))))))

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
    (with-list-builder (push!)
      (let lp ()
        (let (next (read-node YAML_SEQUENCE_END_EVENT))
          (unless (eq? next end-token)
            (push! next)
            (lp))))))

  (def (format-map-key key)
    (if (string? key)
      ((yaml-key-format) key)
      key))

  (def (read-mapping tag)
    (let (ht (make-hash-table))
      (let lp ()
        (let (key (read-node YAML_MAPPING_END_EVENT))
          (if (eq? key end-token)
            ht
            (let (value (read-node))
              (hash-put! ht (format-map-key key) value)
              (lp)))))))

  (def (parse-scalar data tag)
    (let (str (utf8->string data))
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

(def (yaml-dump fname . args)
  (cond
   ((open_yaml_output_file (path-normalize fname))
    => (lambda (file)
         (try (yaml-dump-file file args)
           (finally (close_yaml_file file)))))
   (else
    (error "Cannot open yaml input file" fname))))

(def (yaml-dump-file file args)
  (let* ((emitter (make_yaml_emitter))
         (_      (yaml_emitter_initialize emitter))
         (_      (yaml_emitter_set_output_file emitter file))
         (event  (make_yaml_event)))
    (try (yaml-emit emitter event args)
      (finally (yaml_emitter_delete emitter)))))

(def (yaml-emit emitter event args)
  (def (emit)
    (let (r (yaml_emitter_emit emitter event))
      (when (zero? r)
        (raise-io-error 'yaml-dump "LibYAML emit error" (yaml_emitter_error emitter)))))

  (def (emit-document obj)
    (yaml_event_document_start event)
    (emit)
    (emit-object obj)
    (yaml_event_document_end event)
    (emit))

  (def (emit-object obj)
    (cond
     ((string? obj)
      (yaml_event_scalar event obj)
      (emit))
     ((symbol? obj)
      (let (str (symbol->string obj))
        (yaml_event_scalar event str)
        (emit)))
     ((and (number? obj) (real? obj))
      (let (str (cond
                 ((integer? obj)
                  (number->string obj))
                 ((finite? obj)
                  (number->string (exact->inexact obj)))
                 ((eqv? obj +inf.0) ".inf")
                 ((eqv? obj -inf.0) "-.inf")
                 ((eqv? obj +nan.0) ".NaN")
                 (else
                  (error "Bad YAML object" obj))))
        (yaml_event_scalar event str)
        (emit)))
     ((list? obj)
      (yaml_event_sequence_start event)
      (emit)
      (for-each emit-object obj)
      (yaml_event_sequence_end event)
      (emit))
     ((vector? obj)
      (emit-object (vector->list obj)))
     ((hash-table? obj)
      (yaml_event_mapping_start event)
      (emit)
      (for ((values key val) obj)
        (emit-object key)
        (emit-object val))
      (yaml_event_mapping_end event)
      (emit))
     ((boolean? obj)
      (let (str (if obj "true" "false"))
        (yaml_event_scalar event str)
        (emit)))
     ((void? obj)
      (yaml_event_scalar event "null")
      (emit))
     ((method-ref obj ':yaml)
      => (lambda (yamlf) (emit-object (yamlf obj))))
     (else
      (error "Bad YAML object" obj))))

  (yaml_event_stream_start event)
  (emit)
  (for-each emit-document args)
  (yaml_event_stream_end event)
  (emit))
