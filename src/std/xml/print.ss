;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; sxml-to-xml printer
package: std/xml

(import :std/xml/sxml-to-xml)
(export print-sxml->html
        print-sxml->html*
        print-sxml->html-fast
        print-sxml->xhtml
        print-sxml->xhtml*
        print-sxml->xhtml-fast
        print-sxml->xml
        print-sxml->xml*
        print-sxml->xml-fast
        pretty-print-sxml->xml-file
        pretty-print-sxml->xhtml-file
        sxml->html-string-fragment
        sxml->xhtml-string
        )

(defrules defproc ()                    ; see through *TOP* 
  ((_ proc sxml-to-xml-proc)
   (def (proc tree)
     (sxml-to-xml-proc (cadr tree)))))

(defproc print-sxml->html       sxml>>html)
(defproc print-sxml->html*      sxml>>html*)
(defproc print-sxml->html-fast  sxml>>html-fast)
(defproc print-sxml->xhtml      sxml>>xhtml)
(defproc print-sxml->xhtml*     sxml>>xhtml*)
(defproc print-sxml->xhtml-fast sxml>>xhtml-fast)
(defproc print-sxml->xml        sxml>>xml)
(defproc print-sxml->xml*       sxml>>xml*)
(defproc print-sxml->xml-fast   sxml>>xml-fast)
(defproc pretty-print-sxml->xml-file   sxml>>pretty-xml-file)
(defproc pretty-print-sxml->xhtml-file sxml>>pretty-xhtml-file)
