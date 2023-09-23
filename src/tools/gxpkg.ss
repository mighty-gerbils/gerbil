;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Package Manager
;;;
;;; Usage:
;;;   gxpkg action arg ....
;;; Actions:
;;;   install pkg[@tag] ...
;;;   update pkg[@tag] ...
;;;   uninstall pkg ...
;;;   link pkg src
;;;   unlink pkg ...
;;;   build pkg ...
;;;   clean pkg ...
;;;   list
;;;   retag
;;;   search kw ...
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
        :std/misc/template
        (only-in :std/srfi/13 string-trim)
        :gerbil/gambit)
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
      (rest-arguments 'pkg help: "package to install; use @tag to checkout a specific tag")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
      (flag 'force "-f" help: "force uninstall even if there are orphaned dependencies")
      (rest-arguments 'pkg help: "package to uninstall")))
  (def update-cmd
    (command 'update help: "update one or more packages"
             (rest-arguments 'pkg help: "package to update; use @tag to checkout a specific tag; all for all packages")))
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
      (flag 'build-release "-R" "--release" help: "build released (static) executables")
      (flag 'build-optimized "-O" "--optimized" help: "build full program optimized executables")
      (rest-arguments 'pkg help: "package to build; all for all packages, omit to build in current directory")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
      (rest-arguments 'pkg help: "package to clean; all for all packages, omit to clean in current directory")))
  (def new-cmd
    (command 'new help: "create a new package template in the current directory"
      (option 'package "-p" "--package"
        help: "the package prefix for your project; defaults to the current username"
        default: (getenv "USER"))
      (option 'name "-n" "--name"
        help: "the package name; defaults to the current directory name"
        default: (path-strip-directory
                  (let (path (path-normalize (current-directory)))
                    (substring path 0 (1- (string-length path))))))
      (option 'link "-l" "--link"
        help: "link this package with a public package name; for example: github.com/your-user/your-package")))
  (def deps-cmd
    (command 'deps help: "manage dependencies for the current project"
      (flag 'add "-a" "--add"
        help: "add dependencies")
      (flag 'install "-i" "--install"
        help: "install dependencies")
      (flag 'remove "-r" "--remove"
        help: "remove dependencies")
      (rest-arguments 'deps
        help: "the list of dependencies to add or remove")))
  (def list-cmd
    (command 'list help: "list installed packages"))
  (def retag-cmd
    (command 'retag help: "retag installed packages"))
  (def search-cmd
    (command 'search help: "search the package directory"
      (option 'directory "-d" "--directory"
        help: "A specific directory to use; by default the mighty-gerbils directory and all user configured directories are searched")
      (flag 'as-list "-l" "--list"
        help: "Print the results as a list, do not format it")
      (rest-arguments 'keywords help: "keywords to search for, as a boolean and")))

  (def dir-cmd
    (command 'dir help: "manage the directory list"
      (flag 'add "-a" "--add"
        help: "add a directory to the list of searched directories")
      (flag 'remove "-r" "--remove"
        help: "remove a directory from the list")
      (rest-arguments 'directories
        help: "the directory to add or remove; the directory can be a fully qualified https url to the package-list or a github repo of the form github.com/some-org/some-repo")))

  (call-with-getopt gxpkg-main args
    program: "gxpkg"
    help: "The Gerbil Package Manager"
    new-cmd
    build-cmd
    clean-cmd
    deps-cmd
    link-cmd
    unlink-cmd
    install-cmd
    uninstall-cmd
    update-cmd
    list-cmd
    retag-cmd
    search-cmd
    dir-cmd))

(def (gxpkg-main cmd opt)
  (let-hash opt
    (case cmd
      ((new)
       (pkg-new .package .name .link))
      ((build)
       (build-pkgs .pkg .?build-release .?build-optimized))
      ((clean)
       (clean-pkgs .pkg))
      ((deps)
       (manage-deps .deps .?add .?install .?remove))
      ((link)
       (link-pkg .pkg .src))
      ((unlink)
       (unlink-pkgs .pkg .?force))
      ((install)
       (install-pkgs .pkg))
      ((uninstall)
       (uninstall-pkgs .pkg .?force))
      ((update)
       (update-pkgs .pkg))
      ((list)
       (list-pkgs))
      ((retag)
       (retag-pkgs))
      ((search)
       (search-pkgs .keywords .directory .?as-list))
      ((dir)
       (manage-dirs .directories .?add .?remove)))))

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

(def (build-pkgs pkgs release? optimized?)
  (when release?
    (setenv "GERBIL_BUILD_RELEASE" "t"))
  (when optimized?
    (setenv "GERBIL_BUILD_OPTIMIZED" "t"))
  (if (null? pkgs)
    ;; do local build
    (pkg-build "." #f)
    (for-each pkg-build pkgs)))

(def (clean-pkgs pkgs)
  (if (null? pkgs)
    ;; do local clean
    (pkg-clean ".")
    (for-each pkg-clean pkgs)))

(def (list-pkgs)
  (for (pkg (pkg-list))
    (let (tag (pkg-tag-get pkg))
      (display pkg)
      (when tag
        (display* "@" tag))
      (newline))))

(def (retag-pkgs)
  (pkg-retag))

(def (search-pkgs keywords dir as-list?)
  (pkg-search keywords dir as-list?))

(def (manage-dirs dirs add? remove?)
  (pkg-directory-manage dirs add? remove?))

(def (manage-deps deps add? install? remove?)
  (pkg-deps-manage deps add? install? remove?))

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

(def (pkg-new prefix name maybe-link)
  (def (create-template file template . args)
    (call-with-output-file file
      (lambda (output)
        (apply write-template template output args))))

  (create-template "gerbil.pkg" gerbil.pkg-template
                   package: prefix)
  (create-directory name)
  (create-template (path-expand "main.ss" name) main.ss-template
                   name: name)
  (create-template (path-expand "lib.ss" name) lib.ss-template)
  (create-template [path: "build.ss" permissions: #o755] build.ss-template
                   name: name)
  (create-template ".gitignore" gitignore-template)

  (create-template "Makefile" Makefile-template name: name)

  (when maybe-link
    (pkg-link maybe-link (current-directory))))

(def (pkg+tag pkg)
  (let ((pt (string-split pkg #\@))
        (pkg (car pkg+tag))
        (tag (let (kdr (cdr pkg+tag))
               (and (not (null? kdr))
                    (car kdr)))))
    (values pkg tag)))

(def (pkg-install pkg)
  (let* (((values pkg tag) (pkg+tag pkg))
         (current-tag (pkg-tag-get pkg)))
    (def (install-it tag)
      (pkg-fetch pkg tag)
      (pkg-install-deps pkg)
      (pkg-build pkg))

    (if current-tag
      (cond
       ((pkg-tag-incompatible?  current-tag tag)
        (error "Package already installed with an incompatible tag" pkg tag current-tag))
       ((pkg-tag-choose current-tag tag)
        =>  install-it)
       (else
        (install-it tag)))
      (install-it tag))))

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
           (let (tagf (pkg-tag-file pkg))
             (when (file-exists? tagf)
               (delete-file tagf)))
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
         ((values pkg tag) (pkg+tag pkg))
         (dest (path-expand pkg root)))
    (unless (file-exists? dest)
      (error "Cannot update uknown package" pkg))
    (and (not (file-symbolic-link? dest))
         (pkg-fetch-git pkg tag))))

(def (pkg-fetch pkg tag)
  (cond
   ((or (string-prefix? "github.com/" pkg)
        (string-prefix? "gitlab.com/" pkg)
        (string-prefix? "bitbucket.org/" pkg))
    (pkg-fetch-git pkg tag))
   (else
    (error "Unknown package provider" pkg))))

(def (pkg-fetch-git pkg tag)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root)))
    (if (file-exists? dest)
      (begin
        (displayln "... fetching " pkg)
        (run-process ["git" "fetch" "-q"]
                     directory: dest
                     coprocess: void
                     stdout-redirection: #f))
      (let ((path (path-directory dest))
            (clone-url (string-append "https://" pkg ".git")))
        (displayln "... cloning " pkg)
        (create-directory* path)
        (run-process ["git" "clone" "-q" clone-url]
                     directory: path
                     coprocess: void
                     stdout-redirection: #f)))
    (cond
     (tag
      (displayln "... checking out " tag)
      (run-process ["git" "checkout" "-q" tag]
                   directory: dest
                   coprocess: void
                   stdout-redirection: #f)
      (call-with-output-file (pkg-tag-file pkg)
        (cut write tag <>)))
     ((member (pkg-tag-get pkg) '("master" "main"))
      (displayln "... pulling")
      (run-process ["git" "pull" "-q" tag]
                   directory: dest
                   coprocess: void
                   stdout-redirection: #f)))))

(def (pkg-tag-file pkg)
  (let* ((root (pkg-root-dir))
         (dest (path-expand pkg root))
         (top  (path-directory dest)))
    (path-expand (string-append pkg ".tag") top)))

(def (pkg-tag-get pkg)
  (let ((tagf (pkg-tag-file pkg))
        (top (path-expand pkg (pkg-root-dir))))
    (cond
     ((file-exists? tagf)
      (call-with-input-file tagf read))
     ((file-exists? top)
      (run-process ["git" "branch" "--show-current"]
                   directory: top))
     (else #f))))

(def (pkg-tag-incompatible? current other)
  (cond
   ((or (not current) (not other)) #f)
   ((and (pkg-tag-semver? current)
         (pkg-tag-semver? other))
    #f)
   ((or (member current '("master" "main"))
        (member other '("master" "main")))
    #f)
   (else
    (not (equal? current other)))))

;; Note: in this implementation of semver, we always keep the greatest version.
;; We don't pay attention to majors and we consider master/main to be the frontier.
(def (pkg-tag-choose current other)
  (cond
   ((equal? current other)
    current)
   ((not other)
    current)
   ((member current '("master" "main"))
    current)
   ((member other '("master" "main"))
    other)
   (else
    (let ((current-version (pkg-tag-semver current))
          (other-version (pkg-tag-semver other)))
      (let lp ((current-rest current-version)
               (other-rest other-version))
        (match current-rest
          ([current-hd . current-rest]
           (match other-rest
             ([other-hd . other-rest]
              (cond
               ((= current-hd other-hd)
                (lp current-rest other-rest))
               ((> current-hd other-hd)
                current)
               (else other)))
             (else current)))
          (else other)))))))

(def +rx-semver+
  (pregexp "v(\\d+\\.)*\\d+"))

(def (pkg-tag-semver? tag)
  (pregexp-match +rx-semver+ tag))

(def (pkg-tag-semver tag)
  (map string->number
       (string-split (substring tag 1 (string-length tag)) ; drop the v
                     #\.)))

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
  (def build-options
    (let* ((options [])
           (options (if (getenv "GERBIL_BUILD_RELEASE" #f)
                      (cons "--release" options)
                      options))
           (options (if (getenv "GERBIL_BUILD_OPTIMIZED" #f)
                      (cons "--optimized" options)
                      options)))
      options))

  (cond
   ((equal? pkg "all")
    (let* ((pkgs (pkg-list))
           (deps (map (cut pkg-dependents* <> pkgs) pkgs))
           (pkgs+deps (map cons pkgs deps))
           (sorted (sort pkgs+deps (lambda (pa pb) (member (car pb) (cdr pa))))))
      (for-each (cut pkg-build <> #f) (map car sorted))))
   ((equal? pkg ".")
    (displayln "... build in current directory")
    (let (build.ss (path-expand "build.ss" (current-directory)))
      (run-process [build.ss "compile" build-options ...]
                   stdout-redirection: #f)))
   (else
     (let* ((root (pkg-root-dir))
            (path (path-expand pkg root))
            (_ (unless (file-exists? path)
                 (error "Cannot build unknown package" pkg)))
            (build.ss (pkg-build-script pkg)))
       (displayln "... build " pkg)
       (run-process [build.ss "compile" build-options ...]
                    directory: path
                    coprocess: void
                    stdout-redirection: #f)
       (when dependents?
         (for-each pkg-build (pkg-dependents pkg)))))))

(def (pkg-clean pkg)
  (cond
   ((equal? pkg "all")
    (let* ((pkgs (pkg-list))
           (deps (map (cut pkg-dependents* <> pkgs) pkgs))
           (pkgs+deps (map cons pkgs deps))
           (sorted (sort pkgs+deps (lambda (pa pb) (member (car pb) (cdr pa))))))
      (for-each (cut pkg-clean <>) (map car sorted))))
   ((equal? pkg ".")
    (displayln "... clean current package")
    (let (build.ss (path-expand "build.ss" (current-directory)))
      (run-process [build.ss "clean"]
                   stdout-redirection: #f)))
   (else
     (let* ((root (pkg-root-dir))
            (path (path-expand pkg root))
            (_ (unless (file-exists? path)
                 (error "Cannot build unknown package" pkg)))
            (build.ss (pkg-build-script pkg)))
       (displayln "... clean " pkg)
       (run-process [build.ss "clean"]
                    directory: path
                    coprocess: void
                    stdout-redirection: #f)))))

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
(def (pkg-search keywords dir as-list?)
  (def (search lst)
    (def (try-match kw)
      (let (rx (pregexp (string-append "(?i:" kw ")")))
        (lambda (pkg desc)
          (or (pregexp-match rx pkg) (pregexp-match rx desc)))))

    (def matching
      (map try-match keywords))

    (let lp ((rest lst) (result []))
      (match rest
        ([hd . rest]
         (match hd
           ([pkg . plist]
            (let (description (pgetq description: plist))
              (if (andmap (lambda (matches?) (matches? pkg description))
                          matching)
                (lp rest (cons (cons pkg description) result))
                (lp rest result))))
           (else
            (lp rest result))))
        (else
         (reverse result)))))

  (def (display-pkgs alst)
    (if as-list?
      (pretty-print alst)
      (for ([pkg . desc] alst)
        (displayln pkg ": " desc))))

  (let (alst (if dir (pkg-directory-list dir) (pkg-directory-list-all)))
    (let (matches (search alst))
      (display-pkgs matches))))

(def +mighty-gerbils-pkg-directory+
  "github.com/mighty-gerbils/gerbil-directory")

(def (pkg-directory-url dir)
  (cond
   ((string-prefix? "https://" dir)
    dir)
   ((string-prefix? "github.com/" dir)
    (let (repo (substring dir (string-index dir #\/) (string-length dir)))
      (string-append "https://raw.githubusercontent.com" repo "/main/package-list")))
   (else
    (error "bad directory" dir))))

(def (pkg-directory-user-dirs-path)
  (path-expand "directory-list" (pkg-root-dir)))

(def (pkg-directory-user-dirs)
  (let (user-dir (pkg-directory-user-dirs-path))
    (if (file-exists? user-dir)
      (call-with-input-file user-dir read)
      [])))
(def (pkg-directory-user-dirs-add add-dirs)
  (let* ((current (pkg-directory-user-dirs))
         (new
          (let lp ((rest add-dirs) (new []))
            (match rest
              ([dir . rest]
               (if (or (member dir current)
                       (member dir new))
                 (lp rest new)
                 (lp rest (cons dir new))))
              (else
               (append current (reverse new)))))))
    (call-with-output-file (pkg-directory-user-dirs-path)
      (cut write new <>))))

(def (pkg-directory-user-dirs-remove remove-dirs)
  (let* ((current (pkg-directory-user-dirs))
         (new
          (let lp ((rest current) (new []))
            (match rest
              ([dir . rest]
               (if (member dir remove-dirs)
                 (lp rest new)
                 (lp rest (cons dir new))))
              (else
               (reverse new))))))
    (call-with-output-file (pkg-directory-user-dirs-path)
      (cut write new <>))))

(def (pkg-directory-urls)
  (let* ((default-dirs [+mighty-gerbils-pkg-directory+])
         (user-dirs (pkg-directory-user-dirs))
         (all-dirs (append default-dirs user-dirs)))
    (map pkg-directory-url all-dirs)))

(def (pkg-directory-list-all)
  (for/fold (result []) (url (pkg-directory-urls))
    (let (req (with-catch
               (lambda (exn)
                 (displayln/err "*** WARNING error retrieving packages from " url
                                ": " (or (error-message exn) "(unknown error)"))
                 #f)
               (cut http-get url redirect: #t)))
      (if (and req (fx= (request-status req) 200))
        (let (pkgs (with-catch
                    (lambda (exn)
                      (displayln/err "*** WARNING error retrieving packages from "
                                     (request-url req)
                                     ": " (or (error-message exn) "(unknown error)"))
                      [])
                    (lambda () (call-with-input-string (request-text req) read))))
          (append result pkgs))
        (begin
          (displayln/err "error retrieving packages from " url
                         ": " (request-status-text req))
          result)))))

(def (pkg-directory-list dir)
  (let* ((url (pkg-directory-url dir))
         (req (http-get url redirect: #t)))
    (if (fx= (request-status req) 200)
      (call-with-input-string (request-text req) read)
      (error "error retrieving packages" url (request-status-text req)))))

;; package directory management
(def (pkg-directory-manage dirs add? remove?)
  (cond
   ((null? dirs)
    (if (or add? remove?)
      (error "no directory specified")
      (let (user-dirs (pkg-directory-user-dirs))
        (for (dir user-dirs)
          (let (url (pkg-directory-url dir))
            (if (equal? dir url)
              (displayln dir)
              (displayln dir " -> " url)))))))
   ((and add? remove?)
    (error "do you want to add or remove"))
   (add?
    (pkg-directory-user-dirs-add dirs))
   (remove?
    (pkg-directory-user-dirs-remove dirs))
   (else
    (for (dir dirs)
      (pretty-print (pkg-directory-list dir))))))

;; package depnendency management
(def (pkg-deps-manage deps add? install? remove?)
  (let* ((plist (pkg-plist "."))
         (current-deps (pgetq depend: plist)))

    (def (add-dep! dep)
      (let ((values xpkg _) (pkg+tag dep))
        (let lp ((rest current-deps))
          (match rest
            ([hd . rest]
             (let ((values dpkg _) (pkg+tag hd))
               (if (equal? xpkg dpkg)
                 (set! (car rest) dep)
                 (lp rest))))
            (else
             (set! current-deps (append current-deps [dep])))))))

    (def (remove-dep! dep)
      (let ((values xpkg _) (pkg+tag dep))
        (set! current-deps
          (filter (lambda (hd)
                    (let ((values dpkg _) (pkg+tag hd))
                      (not (equal? dpkg xpkg))))
                  current-deps))))

    (def (write-deps!)
      (let (hd (member depend: plist))
        (if hd
          (set! (car (cdr hd)) current-deps)
          (set! plist (append plist [depend: current-deps]))))
      (call-with-output-file (path-expand "gerbil.pkg" (current-directory))
        (cut write plist <>)))

    (if (null? deps)
      (cond
       (add? (error "nothing to add"))
       (remove? (error "nothing to remove"))
       (install?
        (install-pkgs current-deps))
       (else
        (for-each displayln current-deps)))
      (cond
       ((and add? remove?)
        (error "cannot both add and remove"))
       ((and remove? install?)
        (error "cannot both remove and install"))
       (add?
        (for (dep deps)
          (add-dep! dep))
        (write-deps!)
        (when install?
          (install-pkgs deps)))
       (remove?
        (for (dep deps)
          (remove-dep! dep)))
       (else
        (error "unspecified action; use --add or --remove"))))))

;;; internal
(def +pkg-plist+
  (make-hash-table))

(def (pkg-plist pkg)
  (cond
   ((equal? pkg ".")
    (let* ((gerbil.pkg (path-expand "gerbil.pkg" (current-directory)))
           (plist (call-with-input-file gerbil.pkg read)))
      (if (eof-object? plist) [] plist)))
   ((hash-get +pkg-plist+ pkg)
    => values)
   (else
    (let* ((root (pkg-root-dir))
           (path (path-expand pkg root))
           (gerbil.pkg (path-expand "gerbil.pkg" path))
           (_ (unless (file-exists? gerbil.pkg)
                (error "bad packagekg; missing gerbil.pkg" pkg)))
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
  (let ((values pkg _) (pkg+tag pkg))
    (def (dependent xpkg)
      (let* ((plist (pkg-plist xpkg))
             (deps (pgetq depend: plist [])))
        (let lp ((rest deps) (dpkgs []))
          (match rest
            ([hd . rest]
             (let ((values dpkg _) (pkg+tag hd))
               (lp rest (cons dpkg dpkgs))))
            (else
             (and (member pkg dpkgs)
                  (let ((values xpkg _) (pkg+tag xpkg))
                    xpkg)))))))
    (filter-map dependent pkgs)))

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

(def (displayln/err . args)
  (parameterize ((current-output-port (current-error-port)))
    (apply displayln args)))

;;; templates
(def gerbil.pkg-template #<<END
(package: ${package})

END
)

(def main.ss-template #<<END
;;; -*- Gerbil -*-
(import :std/error
        :std/sugar
        :std/getopt
        ./lib)
(export main)

(def (main . args)
  (call-with-getopt ${name}-main args
    program: "${name}"
    help: "A one line description of your program"
    ;; commands/options/flags for your program; see :std/getopt
    ;; ...
    ))

(def* ${name}-main
  ((opt)
   (${name}-main/options opt))
  ((cmd opt)
   (${name}-main/command cmd opt)))

;;; Implement this if your CLI doesn't have commands
(def (${name}-main/options opt)
  (error "Implement me!"))

;;; Implement this if your CLI has commands
(def (${name}-main/command cmd opt)
  (error "Implement me!"))

END
)

(def lib.ss-template #<<END
;;; -*- Gerbil -*-
(import :std/error
        :std/sugar)
(export #t)

;;; Your library support code
;;; ...

END
)

(def Makefile-template #<<END
ARCH := \$(shell uname -m)
DOCKER_IMAGE := "gerbil/gerbilxx:\$(ARCH)"
default: linux-static

build-release:
	/opt/gerbil/bin/gxpkg link ${name} /src || true
	/opt/gerbil/bin/gxpkg build --release ${name}

build-clean:
	/opt/gerbil/bin/gxpkg clean ${name}

linux-static:
	docker run -it \\
	-e USER=\$(USER) \\
	-e GERBIL_PATH=/src/.gerbil \\
	-v \$(PWD):/src:z \\
	\$(DOCKER_IMAGE) \\
	make -C /src/ build-release

install:
	mv .gerbil/bin/${name} /usr/local/bin/${name}

clean:
	docker run -it \\
	-e GERBIL_PATH=/src/.gerbil \\
	-e USER=\$(USER) \\
	-v \$(PWD):/src:z \\
	\$(DOCKER_IMAGE) \\
	make -C /src/ build-clean

END
)

(def build.ss-template #<<END
#!/usr/bin/env gxi
;;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("${name}/lib"
    (exe: "${name}/main" bin: "${name}")))

END
)

(def gitignore-template #<<END
*~
build-deps

END
)
