;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil module loader
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "hash" "thread")

(def __modules (make-hash-table))
(def __load-mx (make-mutex 'loader))
(def __load-cv (make-condition-variable 'loader))
(def __load-path [])
(def __load-order (make-hash-table))
(def __load-order-next 1)

(def (load-path) => :list
  __load-path)

(def (add-load-path! . paths)
  (unless (andmap string? paths)
    (error "bad load path; expected list of paths" paths))
  (for-each (lambda (p) (set! __load-path (cons p __load-path)))
            (reverse! paths)))

(def (set-load-path! (paths : :list))
  (unless (andmap string? paths)
    (error "bad load path; expected list of paths" paths))
  (set! __load-path paths))

(def (load-module (modpath : :string))
  (mutex-lock! __load-mx)
  (cond
   ((hash-get __modules modpath)
    => (lambda (state)
         (cond
          ((or (eq? 'builtin state) (string? state))
           (mutex-unlock! __load-mx)
           state)
          ((eq? 'loading state)
           (mutex-unlock! __load-mx __load-cv)
           (load-module modpath))
          ((and (pair? state) (eq? (car state) 'error))
           (mutex-unlock! __load-mx)
           (raise (cadr state)))
          (else
           (mutex-unlock! __load-mx)
           (error "inernal error; unexpected loading state" state)))))
   ((__find-library-module modpath)
    => (lambda (path)
         (hash-put! __modules modpath 'loading)
         (mutex-unlock! __load-mx)
         (with-catch
             (lambda (exn)
               (mutex-lock! __load-mx)
               (hash-put! __modules modpath `(error ,exn))
               (condition-variable-broadcast! __load-cv)
               (mutex-unlock! __load-mx)
               (raise exn))
           (lambda ()
             (let (loaded-path (load path))
               (mutex-lock! __load-mx)
               (hash-put! __modules modpath loaded-path)
               (unless (hash-get __load-order modpath)
                 (hash-put! __load-order modpath __load-order-next)
                 (set! __load-order-next (1+ __load-order-next)))
               (condition-variable-broadcast! __load-cv)
               (mutex-unlock! __load-mx)
               loaded-path)))))
   (else
    (mutex-unlock! __load-mx)
    (error "module not found" modpath))))

(def (reload-module! (modpath : :string))
  (mutex-lock! __load-mx)
  (cond
   ((hash-get __modules modpath)
    => (lambda (state)
         (cond
          ((eq? state 'builtin)
           (mutex-unlock! __load-mx)
           (error "cannot reload builtin module" modpath))
          ((eq? 'loading state)
           (mutex-unlock! __load-mx __load-cv)
           (error "module is still loading"))
          ((string? state)
           (let (latest-path (__find-library-module modpath))
             (when (or (equal? (path-extension state) ".scm")
                       (not (equal? state latest-path)))
               (hash-remove! __modules modpath)
               (mutex-unlock! __load-mx)
               (load-module modpath))))
          ((and (pair? state) (eq? (car state) 'error))
           (hash-remove! __modules modpath)
           (mutex-unlock! __load-mx)
           (load-module modpath))
          (else
           (mutex-unlock! __load-mx)
           (error "inernal error; unexpected loading state" state)))))
    (else
     (mutex-unlock! __load-mx)
     (load-module modpath))))

(def (__find-library-module modpath)
  (def (find-compiled-file npath)
    (let (basepath (##string-append npath ".o"))
      (let lp ((current #f) (n 1))
        (let (next (##string-append basepath (number->string n)))
          (if (##file-exists? next)
            (lp next (##fx+ n 1))
            current)))))

  (def (find-source-file npath)
    (let ((spath (##string-append npath ".scm")))
      (and (##file-exists? spath) spath)))

  (let lp ((rest (load-path)))
    (match rest
      ([dir . rest]
       (let ((npath (path-expand modpath (path-expand dir))))
         (cond
          ((find-compiled-file npath) => path-normalize)
          ((find-source-file npath) => path-normalize)
          (else (lp rest)))))
      (else #f))))

(def (list-modules)
  => :list
  (mutex-lock! __load-mx)
  (let (result (hash->list __modules))
    (mutex-unlock! __load-mx)
    (:- result :list)))

(def (module-load-order (modpath : :string))
  => :integer
  (mutex-lock! __load-mx)
  (let (ord
        (cond
         ((eq? (hash-get __modules modpath) 'builtin) 0)
         ((hash-get __load-order modpath))
         (else #f)))
    (mutex-unlock! __load-mx)
    (if (exact-integer? ord)
      ord
      (abort! (error "unknown module load order" module: modpath)))))
