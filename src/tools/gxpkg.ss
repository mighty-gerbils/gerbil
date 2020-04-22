;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Package Manager
;;;
;;; Usage:
;;;   gxpkg action arg ....
;;; Actions:
;;;   install pkg ...
;;;   uninstall pkg ...
;;;   update pkg ...
;;;   link pkg src
;;;   unlink pkg ...
;;;   build pkg ...
;;;   clean pkg ...
;;;   list
;;;   retag
;;; Packages:
;;;   github.com/user/package    -- github based packages
;;;   gitlab.com/user/package    -- gitlab based packages
;;;   bitbucket.org/user/package -- bitbucket based packages
;;;   all                        -- action applies to all packages where sensible to do so
;;; TODO: add private repos support

(import :std/getopt
        :std/sugar
        :std/iter
        :std/sort
        :std/pregexp
        :std/net/request
        :std/misc/process
        (only-in :std/srfi/13 string-trim)
        :gerbil/gambit/os
        :gerbil/gambit/exceptions)
(export main
        ;; script api
        pkg-root-dir
        pkg-install pkg-uninstall pkg-update
        pkg-link pkg-unlink
        pkg-build pkg-clean
        pkg-list
        pkg-retag
        pkg-plist pkg-dependents pkg-dependents*)

(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (flag 'force "-f" help: "force uninstall even if there are orphaned dependencies")
             (rest-arguments 'pkg help: "package to uninstall")))
  (def update-cmd
    (command 'update help: "update one or more packages"
             (rest-arguments 'pkg help: "package to update; all for all packages")))
  (def link-cmd
    (command 'link help: "link a local development package"
             (argument 'pkg help: "package to link")
             (argument 'src help: "path to package source directory")))
  (def unlink-cmd
    (command 'unlink help: "unlink one or more local development packages"
             (flag 'force "-f" help: "force unlink even if there are orphaned dependencies")
             (rest-arguments 'pkg help: "package to unlink")))
  (def build-cmd
    (command 'build help: "rebuild one or more packages and their dependents"
             (rest-arguments 'pkg help: "package to build; all for all packages")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
             (rest-arguments 'pkg help: "package to clean")))
  (def list-cmd
    (command 'list help: "list installed packages"))
  (def retag-cmd
    (command 'retag help: "retag installed packages"))
  (def search-cmd
    (command 'search help: "search the package directory"
             (rest-arguments 'keywords help: "keywords to search for")))
  (def help-cmd
    (command 'help help: "display help; help <command> for command help"
             (optional-argument 'command value: string->symbol)))
  (def gopt
    (getopt install-cmd
            uninstall-cmd
            update-cmd
            link-cmd
            unlink-cmd
            build-cmd
            clean-cmd
            list-cmd
            retag-cmd
            search-cmd
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (let-hash opt
       (case cmd
         ((install)
          (install-pkgs .pkg))
         ((uninstall)
          (uninstall-pkgs .pkg .?force))
         ((update)
          (update-pkgs .pkg))
         ((link)
          (link-pkg .pkg .src))
         ((unlink)
          (unlink-pkgs .pkg .?force))
         ((build)
          (build-pkgs .pkg))
         ((clean)
          (clean-pkgs .pkg))
         ((list)
          (list-pkgs))
         ((retag)
          (retag-pkgs))
         ((search)
          (search-pkgs .keywords))
         ((help)
          (getopt-display-help-topic gopt .?command "gxkpg")))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "gxpkg" (current-error-port))
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))

;;; commands
(defrules fold-pkgs ()
  ((_ pkgs action action-arg ...)
   (let lp ((rest pkgs) (result #f))
     (match rest
       ([pkg . rest]
        (if (action pkg action-arg ...)
          (lp rest #t)
          (lp rest result)))
       (else
        result)))))

(defrules fold-pkgs-retag ()
  ((_ pkgs action action-arg ...)
   (when (fold-pkgs pkgs action action-arg ...)
     (pkg-retag))))

(def (install-pkgs pkgs)
  (fold-pkgs-retag pkgs pkg-install))

(def (uninstall-pkgs pkgs force?)
  (fold-pkgs-retag pkgs pkg-uninstall force?))

(def (update-pkgs pkgs)
  (when (fold-pkgs pkgs pkg-update)
    ;; the package dependencies might have changed, so install them
    (for-each
      (lambda (pkg)
        (if (equal? pkg "all")
          (for-each pkg-install-deps (pkg-list))
          (pkg-install-deps pkg)))
      pkgs)
    ;; rebuild packages
    (for-each pkg-build pkgs)
    (pkg-retag)))

(def (link-pkg pkg src)
  (pkg-link pkg src))

(def (unlink-pkgs pkgs force?)
  (for-each (cut pkg-unlink <> force?) pkgs))

(def (build-pkgs pkgs)
  (for-each pkg-build pkgs))

(def (clean-pkgs pkgs)
  (for-each pkg-clean pkgs))

(def (list-pkgs)
  (for-each displayln (pkg-list)))

(def (retag-pkgs)
  (pkg-retag))

(def (search-pkgs keywords)
  (pkg-search keywords))

;;; action implementation -- script api
(def +root-dir+
  (getenv "GERBIL_PATH" "~/.gerbil"))
(def +pkg-root-dir+
  (path-expand "pkg" +root-dir+))
(def +pkg-lib-dir+
  (path-expand "lib" +root-dir+))
(def +pkg-lib-static-dir+
  (path-expand "static" +pkg-lib-dir+))
(def +pkg-bin-dir+
  (path-expand "bin" +root-dir+))

(def pkg-root-dir
  (let (once
        (delay
          (begin
            (create-directory* +root-dir+)
            (create-directory* +pkg-root-dir+)
            (create-directory* +pkg-lib-dir+)
            (create-directory* +pkg-lib-static-dir+)
            (create-directory* +pkg-bin-dir+))))
    (lambda ()
      (force once)
      +pkg-root-dir+)))

(def (pkg-install pkg)
  (def (git-clone-url pkg)
    (string-append "https://" pkg ".git"))
  (cond
   ((or (string-prefix? "github.com/" pkg)
        (string-prefix? "gitlab.com/" pkg)
        (string-prefix? "bitbucket.org/" pkg))
    (pkg-install-git pkg (git-clone-url pkg)))
   (else
    (error "Unknown package provider" pkg))))

(def (pkg-install-git pkg clone-url)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (if (file-exists? dest)
      #f
      (let (path (path-directory dest))
        (displayln "... install " pkg)
        (create-directory* path)
        (run-process ["git" "clone" "-q" clone-url]
                     directory: path
                     coprocess: void
                     stdout-redirection: #f)
        (pkg-install-deps pkg)
        (pkg-build pkg)
        #t))))

(def (pkg-install-deps pkg)
  (let* ((plist (pkg-plist pkg))
         (deps  (pgetq depend: plist [])))
    (for-each pkg-install deps)))

(def (pkg-uninstall pkg (force? #f))
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (and (file-exists? dest)
         (not (file-symbolic-link? dest))
         (begin
           (unless force?
             (let (deps (pkg-dependents pkg))
               (unless (null? deps)
                 (error "Refuse to uninstall package; orphaned dependencies" deps))))
           (pkg-clean pkg)
           (displayln "... uninstall " pkg)
           (run-process ["rm" "-rf" (path-normalize dest)]
                        coprocess: void)
           #t))))

(def (pkg-update pkg)
  (cond
   ((equal? pkg "all")
    (fold-pkgs (pkg-list) pkg-update))
   ((or (string-prefix? "github.com/" pkg)
        (string-prefix? "gitlab.com/" pkg)
        (string-prefix? "bitbucket.org/" pkg))
    (pkg-update-git pkg))
   (else
    (error "Unknown package provider" pkg))))

(def (pkg-update-git pkg)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (unless (file-exists? dest)
      (error "Cannot update uknown package" pkg))
    (and (not (file-symbolic-link? dest))
         (begin
           (displayln "... update " pkg)
           (let* ((result (run-process ["git" "pull"]
                                       directory: dest))
                  (update? (not (equal? result "Already up-to-date.\n"))))
             update?)))))

(def (pkg-link pkg src)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (when (file-exists? dest)
      (error "Cannot link package; destination already exists" pkg dest))
    ;; We could do some sanity checks about the source package:
    ;; - make sure the source exists, and is a directory
    ;; - make sure it's a valid pkg with a build.ss
    ;; - install dependencies of the package (as listed in gerbil.pkg)
    ;; - etc ...
    ;; ... but where to stop, so just trust the user and link!
    (create-directory* (path-directory dest))
    (create-symbolic-link src dest)))

(def (pkg-unlink pkg (force? #f))
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (when (file-exists? dest)
      (unless (file-symbolic-link? dest)
        (error "Cannot unlink package; not a symbolic link" dest))
      (unless force?
        (let (deps (pkg-dependents pkg))
          (unless (null? deps)
            (error "Refuse to unlink package; orphaned dependencies" deps))))
      (pkg-clean pkg)
      (delete-file dest))))

(def (pkg-build pkg (dependents? #t))
  (if (equal? pkg "all")
    (let* ((pkgs (pkg-list))
           (deps (map (cut pkg-dependents* <> pkgs) pkgs))
           (pkgs+deps (map cons pkgs deps))
           (sorted (sort pkgs+deps (lambda (pa pb) (member (car pb) (cdr pa))))))
      (for-each (cut pkg-build <> #f) (map car sorted)))
    (let* ((root (pkg-root-dir))
           (path (path-expand pkg root))
           (_ (unless (file-exists? path)
                (error "Cannot build unknown package" pkg)))
           (build.ss (pkg-build-script pkg)))
      (displayln "... build " pkg)
      (run-process [build.ss "compile"]
                   directory: path
                   coprocess: void
                   stdout-redirection: #f)
      (when dependents?
        (for-each pkg-build (pkg-dependents pkg))))))

(def (pkg-clean pkg)
  (def gpath (getenv "GERBIL_PATH" "~/.gerbil"))
  (def libdir (path-expand "lib" gpath))
  (def bindir (path-expand "bin" gpath))

  (def (clean-lib mod)
    (let* ((modpath (path-expand mod libdir))
           (moddir (path-directory modpath))
           (modname (path-strip-directory modpath))
           (mod-dot (string-append modname "."))
           (mod-us (string-append modname "__"))
           (mod-nested (string-append modname "$")))
      (when (file-exists? moddir)
        (for-each
          (lambda (file)
            (when (or (string-prefix? mod-dot file)
                      (string-prefix? mod-us file)
                      (string-prefix? mod-nested file))
              (let (path (path-expand file moddir))
                (delete-file path))))
          (directory-files moddir))))

    (let* ((static-libdir (path-expand "static" libdir))
           (static-modname (string-join (string-split mod #\/) "__"))
           (mod-self (string-append static-modname ".scm"))
           (mod-nested (string-append static-modname "$")))
      (when (file-exists? static-libdir)
        (for-each
          (lambda (file)
            (when (or (equal? file mod-self)
                      (string-prefix? mod-nested file))
              (let (path (path-expand file static-libdir))
                (delete-file path))))
          (directory-files static-libdir)))))

  (def (clean-bin exe)
    (let (bin (path-expand exe bindir))
      (when (file-exists? bin)
        (delete-file bin))))

  (def (clean-static-include file)
    (let* ((filename (path-strip-directory file))
           (static-path
            (path-expand filename (path-expand "static" libdir))))
      (when (file-exists? static-path)
        (delete-file static-path))))

  (let* ((root (pkg-root-dir))
         (path (path-expand pkg root))
         (_ (unless (file-exists? path)
              (error "Cannot clean unknown package" pkg)))
         (build.ss (pkg-build-script pkg))
         (build-spec (run-process [build.ss "spec"]
                                  directory: path
                                  coprocess: read))
         (plist (pkg-plist pkg))
         (prefix (pgetq package: plist))
         (prefix (and prefix (symbol->string prefix)))
         (with-prefix
          (if prefix
            (lambda (mod) (string-append prefix "/" mod))
            values)))
    (for-each
      (match <>
        ((? string? modf)
         (clean-lib (with-prefix modf)))
        ([gxc: modf . _]
         (clean-lib (with-prefix modf)))
        ([gsc: modf . _]
         (clean-lib (with-prefix modf)))
        ([ssi: modf . _]
         (clean-lib (with-prefix modf)))
        ([exe: modf . opts]
         (clean-lib (with-prefix modf))
         (clean-bin (pgetq bin: opts modf)))
        ([static-exe: modf . opts]
         (clean-lib (with-prefix modf))
         (clean-bin (pgetq bin: opts modf)))
        ([static-include: file]
         (clean-static-include file))
        (unexpected
         (displayln "Ignoring unexpected build artifact " unexpected)))
      build-spec)))

(def (pkg-list)
  (def root (pkg-root-dir))

  (def (walk dir pkgpath)
    (for-each
      (lambda (file)
        (let* ((path (path-expand file dir))
               (gerbil.pkg (path-expand "gerbil.pkg" path))
               (pkgpath
                (if (string-empty? pkgpath)
                  file
                  (string-append pkgpath "/" file))))
          (cond
           ((file-exists? gerbil.pkg)
            (yield pkgpath))
           ((file-directory? path)
            (walk path pkgpath)))))
    (directory-files dir)))

  (for/collect (pkg (cut walk root "")) pkg))

(def (pkg-retag)
  (let* ((root (pkg-root-dir))
         (dirs (filter (lambda (file) (file-directory? (path-expand file root)))
                       (directory-files root))))
    (displayln "... tagging packages")
    (run-process ["gxtags" dirs ...]
                 directory: root)))

;; package directory search
(def (pkg-search keywords)
  (def (search alst)
    (let lp ((rest alst) (r []))
      (match rest
        ([(and hd [pkg . desc]) . rest]
         (if (andmap (lambda (kw)
                      (let (rx (pregexp (string-append "(?i:" kw ")")))
                        (or (pregexp-match rx pkg) (pregexp-match rx desc))))
                    keywords)
           (lp rest (cons hd r))
           (lp rest r)))
        (else
         (reverse r)))))

  (def (display-pkgs alst)
    (for ([pkg . desc] alst)
      (displayln pkg ": " desc)))

  (let (alst (pkg-directory-list))
    (if (null? keywords)
      (display-pkgs alst)
      (let (matches (search alst))
        (display-pkgs matches)))))

(def +pkg-directory+
  "https://raw.githubusercontent.com/vyzo/gerbil-directory/master/README.md")

(def (pkg-directory-list)
  (let* ((txt (request-text (http-get +pkg-directory+)))
         (lines (string-split txt #\newline)))
    (let lp ((rest lines))
      (match rest
        ([hd . rest]
         (if (equal? hd "<!-- begin-pkg -->")
           (let lp2 ((rest (cddr rest)) (pkgs []))
             (match rest
               ([hd . rest]
                (if (equal? hd "<!-- end-pkg -->")
                  (reverse pkgs)
                  (match (string-split hd #\|)
                    ([_ pkg-link pkg-desc . _]
                     (with ([_ pkg] (pregexp-match "\\[([^]]+)\\]" pkg-link))
                       (lp2 rest (cons (cons pkg (string-trim pkg-desc)) pkgs)))))))))
           (lp rest)))))))

;;; internal
(def +pkg-plist+
  (make-hash-table))

(def (pkg-plist pkg)
  (cond
   ((hash-get +pkg-plist+ pkg)
    => values)
   (else
    (let* ((root (pkg-root-dir))
           (path (path-expand pkg root))
           (gerbil.pkg (path-expand "gerbil.pkg" path))
           (_ (unless (file-exists? gerbil.pkg)
                (error "Bad package; missing gerbil.pkg" pkg)))
           (plist (call-with-input-file gerbil.pkg read))
           (plist (if (eof-object? plist) [] plist)))
      (hash-put! +pkg-plist+ pkg plist)
      plist))))

(def (pkg-build-script pkg)
  (let* ((root (pkg-root-dir))
         (path (path-expand pkg root))
         (plist (pkg-plist pkg))
         (build (pgetq build: plist))
         (build.ss (path-expand (or build "build.ss") path)))
    (unless (file-exists? build.ss)
      (error "Bad package; missing build script" pkg build.ss))
    (path-normalize build.ss)))

(def (pkg-dependents pkg (pkgs (pkg-list)))
  (def (dependent xpkg)
    (let* ((plist (pkg-plist xpkg))
           (deps (pgetq depend: plist [])))
      (and (member pkg deps)
           xpkg)))
  (filter-map dependent pkgs))

(def (pkg-dependents* pkg (pkgs (pkg-list)))
  (let (deps (pkg-dependents pkg pkgs))
    (let lp ((rest deps) (r []))
      (match rest
        ([pkg . rest]
         (if (member pkg r)
           (lp rest r)
           (let (deps (pkg-dependents pkg pkgs))
             (lp (foldl cons rest deps)
                 (cons pkg r)))))
        (else r)))))

(def (file-directory? path)
  (eq? (file-type path) 'directory))

(def (file-symbolic-link? path)
  (eq? (file-info-type (file-info path #f))
       'symbolic-link))
