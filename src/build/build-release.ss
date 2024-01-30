#!/usr/bin/env gxi
;; -*- Gerbil -*-
;;;; Build the Gerbil release
(export #t)

(import
  (only-in :std/cli/getopt argument optional-argument option)
  (only-in :std/cli/multicall define-multicall-main define-entry-point set-default-entry-point!)
  (only-in :std/error dump-stack-trace?)
  (only-in :std/misc/list when/list)
  (only-in :std/misc/path path-absolute?)
  (only-in :std/misc/ports read-file-string read-all-as-lines)
  (only-in :std/misc/process run-process run-process/batch)
  (only-in :std/pregexp pregexp-match)
  (only-in :std/srfi/1 second)
  (only-in :std/sugar ignore-errors))

(def platform "linux-x86-64")

(def (abort message)
  (display message (current-error-port))
  (newline (current-error-port))
  (exit 2))

(define-entry-point (git-tarball (gerbil #f)
                                 version: (version_ #f)
                                 destination: (destination #f))
  (help: "Create a tarball from a git checkout"
   getopt: [(optional-argument
             'gerbil default: #f help: "git checkout directory to tarball")
            (option
             'destination "-d" "--destination" default: #f help: "destination directory for tarball")
            (option
             'version "-v" "--version" default: #f help: "version to use for the MANIFEST")])
  (def (in-gerbil path)
    (if gerbil (path-expand path gerbil) path))
  (def git-has-manifest?
    (not (null? (run-process ["git" "ls-files" "MANIFEST"]
                             directory: gerbil
                             coprocess: read-all-as-lines))))
  (def checkout-has-manifest?
    (file-exists? (in-gerbil "MANIFEST")))
  (def version
    (or version_
        (and checkout-has-manifest?
             (second (pregexp-match "gerbil_stamp_version=([-_.0-9a-zA-Z]+)\n"
                                    (read-file-string (in-gerbil "MANIFEST")))))
        (run-process ["git" "describe" "--tags" "--always"]
                     directory: gerbil
                     coprocess: read-line)))
  (unless checkout-has-manifest?
    (run-process/batch ["./manifest.sh" version]
                       directory: gerbil))
  (def prefix (as-string "gerbil-" version))
  (def tarball (let (path (as-string prefix ".tar.gz"))
                 (if destination (path-expand path destination) path)))
  (run-process/batch ["sh" "-c"
                      (as-string
                       "(" (unless git-has-manifest? "echo MANIFEST ; ")
                       "git ls-files --recurse-submodules ) |"
                       "tar zcaf " tarball " --transform=s,^," prefix "/, -T-")]
                     directory: gerbil)
  (unless (or git-has-manifest? checkout-has-manifest?)
    (delete-file (in-gerbil "MANIFEST")))
  (values tarball prefix))

;; TODO: build in minimal docker image
(define-entry-point (build-tarball tarball_ output: (output_ #f))
  (help: "Build a Gerbil tarball"
   getopt: [(argument
             'tarball help: "tarball to build")
            (option
             'output "-o" "--output" help: "output binary tarball")])
  (def here (current-directory))
  (def tarball (path-expand tarball_ here))
  (unless (file-exists? "/opt/src/")
    (abort "Please create /opt/src owned by current user, e.g. with:
sudo mkdir /opt/src ; sudo chown $USER /opt/src"))
  (current-directory "/opt/src")
  (def prefix
    (let* ((file (first (run-process ["tar" "tf" tarball] coprocess: read-all-as-lines)))
           (pos (string-index file #\/)))
      (substring file 0 pos)))
  (run-process/batch ["tar" "xf" tarball])
  ;; Build gerbil
  ;; TODO: use some minimal docker image to do the building!
  (run-process/batch ["sh" "-c" "./configure && make"] directory: prefix)
  ;; Install gerbil to /opt
  (run-process/batch ["sudo" "rm" "-rf" "/opt/gerbil"] check-status: #f)
  (run-process/batch ["sudo" "mkdir" "-p" "/opt/gerbil"])
  (run-process/batch ["sudo" "make" "install"] directory: prefix)
  (run-process/batch ["sudo" "chown" "-R" "root:root" "/opt/gerbil"])
  ;; Build binary tarball
  (def output (path-expand (or output_ (as-string prefix "-" platform ".tar.gz")) here))
  (run-process/batch ["tar" "zcf" output "opt/gerbil"] directory: "/")
  output)

(define-entry-point (build-tarballs (gerbil #f)
                                    version: (version #f)
                                    destination: (destination_ #f))
  (help: "Build Gerbil source and binary tarballs"
   getopt: [(optional-argument
             'gerbil default: #f help: "git checkout directory to tarball")
            (option
             'destination "-d" "--destination" default: #f help: "destination directory for tarball")
            (option
             'version "-v" "--version" default: #f help: "version to use for the MANIFEST")])
  (def destination (or destination_ (current-directory)))
  (defvalues (source-tarball prefix)
    (git-tarball gerbil version: version destination: destination))
  (def binary-tarball
    (as-string destination "/" prefix "-" platform ".tar.gz"))
  (build-tarball source-tarball output: binary-tarball)
  (def deps-tarball
    (as-string destination "/" prefix "-" platform "-heroku-extras.tar.gz"))
  (run-process/batch ["sh" "-c"
                      (as-string
                       "tar"
                       " --transform="
                       "'s,usr/lib/x86_64-linux-gnu/,opt/gerbil/lib/,;"
                       "s,usr/include/,opt/gerbil/include/,'"
                       " usr/lib/x86_64-linux-gnu/libsqlite3.*"
                       " usr/include/sqlite3*.h"
                       " -zcf " deps-tarball)] directory: "/"))

(set-default-entry-point! 'build-tarballs)
(dump-stack-trace? #f)
(define-multicall-main)
