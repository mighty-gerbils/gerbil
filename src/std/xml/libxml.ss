;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libxml parser interface
;;;

(export parse-xml parse-html
        parse-xml-default-options parse-html-default-options
        XML_PARSE_RECOVER
        XML_PARSE_NOENT
        XML_PARSE_DTDLOAD
        XML_PARSE_DTDATTR
        XML_PARSE_DTDVALID
        XML_PARSE_NOERROR
        XML_PARSE_NOWARNING
        XML_PARSE_PEDANTIC
        XML_PARSE_NOBLANKS
        XML_PARSE_XINCLUDE
        XML_PARSE_NONET
        XML_PARSE_NODICT
        XML_PARSE_NSCLEAN
        XML_PARSE_NOCDATA
        XML_PARSE_NOXINCNODE
        XML_PARSE_COMPACT
        XML_PARSE_HUGE
        HTML_PARSE_RECOVER
        HTML_PARSE_NODEFDTD
        HTML_PARSE_NOERROR
        HTML_PARSE_NOWARNING
        HTML_PARSE_PEDANTIC
        HTML_PARSE_NOBLANKS
        HTML_PARSE_NONET
        HTML_PARSE_NOIMPLIED
        HTML_PARSE_COMPACT
        HTML_PARSE_IGNORE_ENC)

(import :std/error
        :std/xml/_libxml)

(deferror-class (LibXMLError IOError) () libxml-error?)
(def (raise-libxml-error where what . irritants)
  (raise (LibXMLError what where: where irritants: irritants)))

(def (parser-e source parse-string parse-u8vector parse-port)
  (cond
   ((string? source) parse-string)
   ((u8vector? source)
    (lambda (src url enc opt)
      (parse-u8vector src 0 (u8vector-length src) url enc opt)))
   ((input-port? source) parse-port)
   (else
    (raise-bad-argument 'libxml "string, u8vector, or input-port" source))))

;; xml parser interface: parses to SXML + *CDATA* unless collapsed with
;;  XML_PARSE_NOCDATA
;; Arguments:
;;  source: parse source; a string, u8vector, or input port
;;  url: string for base url
;;  encoding: string/#f; strings are always UTF-8 encoded for parsing.
;;  options: fixnum (ior of libxml parser options)
;;  namespaces: alist or hash-table mapping urls to namespace prefixes
;;              (string -> string)
;;              document defined prefixes are ignored; the url is used
;;              as the canonical prefix if it is not in the namespaces
;;              mapping.
(def (parse-xml source
                url: (url "none.xml")
                encoding: (encoding "UTF-8")
                options: (options parse-xml-default-options)
                namespaces: (ns []))
  (let* ((parse (parser-e source xmlRead-string xmlRead-u8vector
                          xmlRead-port))
         (xtree (parse source url encoding options)))
    (if xtree
      (unwind-protect
        (xml-doc->sxml xtree ns)
        (xmlFreeDoc xtree))
      (raise-libxml-error 'parse-xml "Error parsing xml; no parse tree" source))))

;; html parser interface; parses to SXML + *CDATA*
;; source, encoding, url, options as above
;; filter: list of strings, elements to be removed from the tree
(def (parse-html source
                 url: (url "none.html")
                 encoding: (encoding "UTF-8")
                 options: (options parse-html-default-options)
                 filter: (filter-els []))
  (let* ((parse (parser-e source htmlRead-string htmlRead-u8vector
                          htmlRead-port))
         (xtree (parse source url encoding options)))
    (if xtree
      (unwind-protect
        (html-doc->sxml xtree (node-filter-e filter-els))
        (xmlFreeDoc xtree))
      (raise-libxml-error 'parse-html "Error parsing html; no parse tree" source))))

(def (xml-doc->sxml xtree ns)
  (def nsmap
    (cond
     ((hash-table? ns) ns)
     ((pair? ns)
      (list->hash-table ns))
     (else #f)))

  (def (ns-name-e node node-name node-ns)
    (let ((name (node-name node))
          (ns (node-ns node)))
      (if ns
        (let* ((href (xmlNs-href ns))
               (pre (or (and nsmap (hash-get nsmap href)) href)))
          (string->symbol
           (string-append pre ":" name)))
        (string->symbol name))))

  (def (element-e node)
    (ns-name-e node xmlNode-name xmlNode-ns))

  (def (attribute-e node)
    (ns-name-e node xmlAttr-name xmlAttr-ns))

  (let ((body (xmlNode->sxml (xmlDocGetRootElement xtree)
                             false element-e attribute-e))
        (nsassoc (and nsmap (hash-map (lambda (href pre) [(string->symbol pre) href])
                                      nsmap))))
    (if nsassoc
      ['*TOP* ['@ ['*NAMESPACES* nsassoc ...]]
              body ...]
      ['*TOP* body ...])))

(def (html-doc->sxml xtree filter-e)
  (cons '*TOP*
        (xmlNode->sxml (xmlDocGetRootElement xtree)
                       filter-e xmlNode-name-e xmlAttr-name-e)))

(def (xmlNode->sxml node filter-e element-e attribute-e)
  (let recur ((node node))
    (if node
      (if (filter-e node)
        (recur (xmlNode-next node))
        (let ((type (xmlNode-type node))
              (rest (recur (xmlNode-next node))))
          (cond
           ((eq? type XML_ELEMENT_NODE)
            (let ((el (element-e node))
                  (attr (xmlNode-properties node))
                  (children (recur (xmlNode-children node))))
              (if attr
                [[el ['@ (xmlAttr->list attr attribute-e) ...] children ...]
                 rest ...]
                [[el children ...] rest ...])))
           ((eq? type XML_TEXT_NODE)
            [(xmlNode-content node) rest ...])
           ((eq? type XML_CDATA_SECTION_NODE)
            [['*CDATA* (xmlNode-content node)] rest ...])
           ((eq? type XML_COMMENT_NODE)
            rest)
           (else
            (raise-libxml-error 'xmlNode->sxml "Unexpected node" (xmlNode-name node) type)))))
      [])))

(def (xmlAttr->list attr attribute-e)
  (let recur ((attr attr))
    (if attr
      (let* ((value (xmlAttr-children attr))
             (value (if value [(xmlNode-content value)] [])))
        (cons [(attribute-e attr) value ...]
              (recur (xmlAttr-next attr))))
      [])))

(def (xmlNode-name-e node)
  (string->symbol
   (xmlNode-name node)))

(def (xmlAttr-name-e node)
  (string->symbol
   (xmlAttr-name node)))

(def parse-xml-default-options
  (fxior XML_PARSE_NOENT
         XML_PARSE_NONET
         XML_PARSE_NOBLANKS))
(def parse-html-default-options
  (fxior HTML_PARSE_RECOVER
         HTML_PARSE_NOERROR
         HTML_PARSE_NOWARNING
         HTML_PARSE_NONET
         HTML_PARSE_NOBLANKS))

(def (node-filter-e elems)
  (if (null? elems) false
      (lambda (node)
        (alet (name (xmlNode-name node))
          (member name elems)))))
