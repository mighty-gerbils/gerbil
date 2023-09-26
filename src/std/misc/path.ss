;; Manipulate strings that denoting POSIX-style paths, independently from any underlying filesystem.

;; TODO: support Windows?
;; TODO: something inspired by UIOP:TRUENAMIZE, etc.

(export #t)

(import
  :std/srfi/1
  :std/srfi/13
  :std/sugar)

;; : String (OrFalse String) -> String
(def (path-default-extension path ext)
  (if (and ext (string-empty? (path-extension path)))
    (string-append path ext)
    path))

;; : String (OrFalse String) -> String
(def (path-force-extension path ext)
  (if ext
    (string-append (path-strip-extension path) ext)
    path))

;; : String (OrFalse String) -> String
(def (path-extension-is? path extension)
  (equal? (path-extension path) extension))

;; : String String ... -> String
(def (subpath top . sub-components)
  (path-expand (string-join sub-components "/") top))

;; If `maybe-subpath` is a pathname that is under `base-path`, return a pathname object that
;; when used with `path-expand` with defaults `base-path`, yields `maybe-subpath`.
;; Otherwise, return #f.
;; : (OrFalse String) (OrFalse String) -> (OrFalse String)
(def (subpath? maybe-subpath base-path)
  (and (string? maybe-subpath) (string? base-path)
       (eq? (path-absolute? maybe-subpath) (path-absolute? base-path))
       (let ((ls (string-length maybe-subpath))
             (lb (string-length base-path))
             (sep? (lambda (s pos) (eqv? (string-ref s pos) #\/))))
         (cond
          ((< ls lb) #f) ;; NB: this in particular concludes that /foo is not subpath of /foo/ ?
          ((> ls lb) (and (or (sep? base-path (- lb 1)) (sep? maybe-subpath lb))
                          (string-prefix? base-path maybe-subpath)
                          (let ((pos (string-index maybe-subpath (lambda (x) (not (eqv? x #\/))) lb)))
                            (if pos (substring maybe-subpath pos ls) ""))))
          (else (and (equal? base-path maybe-subpath) ""))))))

;; : String -> Bool
(def (path-absolute? path)
  (string-prefix? "/" path))

;; : Any -> Bool
(def (absolute-path? path)
  (and (string? path) (path-absolute? path)))

;; Return the absolute path associated to a designator.
;; Throw an error if the designator is invalid or does not designate an absolute path.
;; A string designates itself. A thunk designates its result. #f designates the current-directory.
;; : (Or String False (-> String)) -> String
(def (get-absolute-path path-designator)
  (cond
   ((absolute-path? path-designator) path-designator)
   ((string? path-designator) (error "Path not absolute" path-designator))
   ((not path-designator) (get-absolute-path (current-directory)))
   ((procedure? path-designator) (get-absolute-path (path-designator)))
   (else (error "Invalid path designator" path-designator))))

;; : String (Or String False (-> String)) -> String
(def (ensure-absolute-path path (base #f))
  (if (path-absolute? path) path
      (path-expand path (get-absolute-path base))))

;; Normalize will fail if the file doesn't exist, or
;; if some funky business happens with symlink or magic mounts.
;; So we gracefully fall back to non-normalized path when that's the case.
;; : String -> String
(def (path-maybe-normalize path)
  (with-catch (lambda (_) (path-simplify path)) (cut path-normalize path)))

;; If `sub` is a pathname that is under `base`, return a pathname string that
;; when used with `path-expand` with defaults `base`, returns `sub`.
;; Compare CL:ENOUGH-NAMESTRING, UIOP:ENOUGH-PATHNAME.
;; : String <- String String
(def (path-enough sub base)
  (or (and base (subpath? sub base)) sub))

;; : String -> String
(def (path-simplify-directory path)
  (path-simplify (path-directory path)))

;; : String -> String
(def (path-normalized-directory path)
  (path-maybe-normalize (path-directory path)))

;; : String -> String
(def (path-parent path)
  (path-maybe-normalize (path-expand ".." path)))

;; Given a path to a file that may or may exists on the current filesystem,
;; return a simplified path, eliminating redundant uses of "." or "/",
;; and, unless keep..? is true, also remove ".."
;; (assuming no weird symlinks or mounts that makes you want not to simplify foo/..)
;; NB: Always simplify away a trailing / except for the root directory /.
;; : String keep..?:Bool -> String
(def (path-simplify path keep..?: (keep..? #f))
  (def l (string-split path #\/))
  (def abs? (and (pair? l) (equal? (car l) "")))
  (set! l (remove (cut member <> '("" ".")) l))
  (unless keep..?
    (let loop ((head (reverse l)) (tail '()))
      (cond
       ((and (pair? head) (pair? tail) (equal? (car tail) "..") (not (equal? (car head) "..")))
        (loop (cdr head) (cdr tail)))
       ((pair? head)
        (loop (cdr head) (cons (car head) tail)))
       (else (set! l tail))))
    (when abs?
      (while (and (pair? l) (equal? (car l) ".."))
        (set! l (cdr l)))))
  (if (null? l)
    (if abs? "/" "") ;; "" is the standard "here" path, though we could have picked ".".
    (begin
      (when abs?
        (set! l (cons "" l)))
      (string-join l "/"))))
