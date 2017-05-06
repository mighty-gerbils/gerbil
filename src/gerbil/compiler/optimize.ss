;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        :gerbil/compiler/base
        :gerbil/compiler/compile
        (only-in :gerbil/gambit/exceptions display-exception))
(export #t)

(def current-compile-optimizer-info
  (make-parameter #f))

(defstruct optimizer-info (type ssxi)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (direct-struct-instance-init!
     self (make-hash-table-eq) (make-hash-table-eq))))

;; sticky to persist across batch compilation and avoid reloading ssxi modules
(def (optimizer-info-init!)
  (unless (current-compile-optimizer-info)
    (current-compile-optimizer-info (make-optimizer-info))))


;; optimizer entry point
(def (optimize! ctx)
  (optimizer-load-ssxi-deps ctx)
    ;; mark ssxi presence for batch
  (hash-put! (optimizer-info-ssxi (current-compile-optimizer-info))
             (expander-context-id ctx)
             #t)
  (let (code (optimize-source (module-context-code ctx)))
    (set! (module-context-code ctx) code)))

(def (optimizer-load-ssxi-deps ctx)
  (let lp ((rest (module-context-import ctx)))
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (optimizer-load-prelude-ssxi ctx)
         (optimizer-load-ssxi hd)
         (lp (append (module-context-import hd) rest)))
        ((module-import? hd)
         (lp (cons (module-import-source hd) rest)))
        ((module-export? hd)
         (lp (cons (module-export-context hd) rest)))
        ((import-set? hd)
         (lp (cons (import-set-source hd) rest)))
        (else
         (error "Unexpected module import" hd))))
      (else (void)))))

(def (optimizer-load-prelude-ssxi ctx)
  (cond
   ((core-context-prelude ctx) => optimizer-load-ssxi)
   (else (void))))

(def (optimizer-load-ssxi ctx)
  (unless (and (module-context? ctx)
               (list? (module-context-path ctx)))
    (let* ((ht (optimizer-info-ssxi (current-compile-optimizer-info)))
           (id (expander-context-id ctx))
           (mod (hash-get ht id)))
      (or mod
          (let* ((mod (optimizer-import-ssxi ctx))
                 (val (or mod #!void)))
            (hash-put! ht id val)
            val)))))

(def (optimizer-import-ssxi ctx)
  ;; check output-dir/id.ssxi.ss for existence; this is a current compilation
  ;; artefact; else check and :id.ssxi library path
  ;; catch error and display exception in verbose mode
  (def (catch-e exn)
    (when (current-compile-verbose)
      (displayln "Failed to load ssxi module for " (expander-context-id ctx))
      (display-exception exn))
    #f)

  (def (import-e)
    (let* ((str-id (string-append
                    (symbol->string (expander-context-id ctx))
                    ".ssxi"))
           (artefact-path
            (alet (odir (current-compile-output-dir))
              (path-expand (string-append str-id ".ss") odir)))
           (library-path
            (string->symbol
             (string-append ":" str-id)))
           (ssxi-path
            (if (and artefact-path (file-exists? artefact-path))
              artefact-path
              library-path)))
      (verbose "Loading ssxi module " ssxi-path)
      (import-module ssxi-path #t #t)))
  
  (with-catch catch-e import-e))

(def (optimize-source stx)
  ;; TODO actually optimize
  stx
  )
