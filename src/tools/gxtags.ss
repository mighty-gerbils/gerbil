;; -*- Gerbil -*-
;; Generate emacs TAGS from gerbil sources
;; only exported symbols are tagged.
;; Usage: gxtags [-a] [-o tags-file] file-or-directory ...

(import :gerbil/expander
        :gerbil/gambit
        :std/getopt
        :std/sugar
        )
(export main)

(def (main . args)
  (def gopt
    (getopt (flag 'append "-a"
               help: "append to existing tag file")
            (option 'output "-o" default: "TAGS"
               help: "explicit name of file for tag table")
            (flag 'help "-h" "--help"
               help: "display help")
            (rest-arguments 'input
               help: "source file or directory")))

  (def (help what)
    (getopt-display-help what "gxtags"))

  (try
   (let (opt (getopt-parse gopt args))
     (if (hash-get opt 'help)
       (help gopt)
       (let (inputs (hash-get opt 'input))
         (if (null? inputs)
           (begin
             (help gopt)
             (exit 1))
           (run (hash-get opt 'input)
                (hash-get opt 'output)
                (hash-get opt 'append))))))
   (catch (getopt-error? exn)
     (help exn)
     (exit 1))))

(def (run inputs tagfile append?)
  (_gx#load-expander!)
  (call-with-output-file [path: tagfile append: append?]
    (lambda (output)
      (for-each (cut tag-input <> output) inputs))))

(def (file-directory? path)
  (eq? (file-type path) 'directory))

(def (tag-input input output)
  (if (file-exists? input)
    (if (file-directory? input)
      (tag-directory input output)
      (tag-source-file input output))
    (error "No such file or directory" input)))

(def (tag-directory dirname output)
  (let* ((dir (open-directory dirname))
         (files (read-all dir)))
    (close-port dir)
    (for-each
      (lambda (file)
        (let (path (path-expand file dirname))
          (when (or (file-directory? path)
                    (member (path-extension path) '(".ss" ".ssi")))
            (tag-input path output))))
      files)))

(def (tag-source-file filename output)
  (displayln "TAG " filename)
  )
