;; Manipulate strings that denoting POSIX-style paths, independently from any underlying filesystem.

;; TODO: support Windows?
;; TODO: something inspired by UIOP:TRUENAMIZE, etc.

(import (only-in :std/list/list when/list)
        (only-in :std/string/misc string=))
(export #t)

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
;; Strip any trailing / at the end of base-path or the beginning of the subpath.
;; : (OrFalse String) (OrFalse String) -> (OrFalse String)
;;
;; If `maybe-subpath` is lexically under `base-path`, return the relative
;; suffix. This function does not canonicalize "." or ".."; callers that want
;; that should canonicalize first.
;;
;; A run of multiple separators in either base-path or maybe-subpath
;; is treated as a single path boundary while matching the base prefix.
;; The returned suffix preserves the spelling from `maybe-subpath`, except that
;; the boundary separator run is consumed so the result is relative.
;;
;; "" is treated as the empty relative base-path, at which point the string maybe-subpath
;; is returned unchanged (which might cause issues if someone later modifies it).
;;
;; : (OrFalse String) (OrFalse String) -> (OrFalse String)
(def (subpath? (maybe-subpath :? :string) (base-path :? :string))
  (and (string? maybe-subpath)
       (string? base-path)
       (let ((maybe-absolute? (path-absolute? maybe-subpath))
             (base-absolute? (path-absolute? base-path)))
         (and (eq? maybe-absolute? base-absolute?)
              (let ((ls (string-length maybe-subpath))
                    (lb (string-length base-path)))
                (let ()
                  (def (slash? c)
                    (eqv? c #\/))

                  (def (slash-at? s i)
                    (slash? (string-ref s i)))

                  (def (skip-slashes s i n)
                    (or (string-index s (lambda (c) (not (slash? c))) i) n))

                  (if (= lb 0)
                    maybe-subpath
                    (let match ((ib 0) (is 0))
                      (let ((ib (skip-slashes base-path ib lb)))
                        (if (= ib lb)
                          ;; The base has been fully matched. The candidate
                          ;; must be done too, or sitting at a boundary slash
                          ;; run. Consume that run before returning the suffix.
                          (cond
                           ((= is ls)
                            "")

                           ((slash-at? maybe-subpath is)
                            (let ((start (skip-slashes maybe-subpath is ls)))
                              (if (= start ls)
                                ""
                                (substring maybe-subpath start ls))))

                           (else
                            #f))

                          ;; Match the next base component against the next
                          ;; same-length candidate slice. The candidate slice
                          ;; must end at end-of-string or at a slash boundary.
                          (let* ((is (skip-slashes maybe-subpath is ls))
                                 (jb (or (string-index base-path #\/ ib)
                                         lb))
                                 (len (- jb ib))
                                 (js (+ is len)))
                            (and (<= js ls)
                                 (string= base-path maybe-subpath
                                          ib jb
                                          is js)
                                 (or (= js ls)
                                     (slash-at? maybe-subpath js))
                                 (match jb js)))))))))))))

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
  (path-maybe-normalize (path-expand "../" path)))

;; Given a path to a file that may or may exists on the current filesystem,
;; return a simplified path, eliminating redundant uses of "." or "/",
;; and, unless keep..? is true, also remove ".."
;; (assuming no weird symlinks or mounts that makes you want not to simplify foo/..)
;; NB: Always simplify away a trailing / except for the root directory /.
;; : String keep..?:Bool -> String
(def (path-simplify path keep-dot-dot: (keep-dot-dot #f))
  (def abs? (string-prefix? "/" path))
  (def dir? (string-suffix? "/" path))
  (def l (remove (cut member <> '("" ".")) (string-split path #\/)))
  (when abs?
    (while (and (pair? l) (equal? (car l) ".."))
      (set! l (cdr l))))
  (unless keep-dot-dot
    (let loop ((head (reverse l)) (tail '()))
      (cond
       ((and (pair? head) (pair? tail) (equal? (car tail) "..") (not (equal? (car head) "..")))
        (loop (cdr head) (cdr tail)))
       ((pair? head)
        (loop (cdr head) (cons (car head) tail)))
       (else (set! l tail)))))
  (cond
   ((pair? l) (string-join (append (when/list abs? '("")) l (when/list dir? '(""))) "/"))
   (abs? "/")
   (else ""))) ;; "" is our standard "here" path, though we could have picked "." or "./".
