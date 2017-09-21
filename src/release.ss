#!/usr/bin/env gxi-script
;; -*- Gerbil -*-
;;; Release script for Gerbil.
;; Usage: ./release.ss [version]
;;
;; Use it from a fully committed git tree.
;;
;; If a release version is specified (vX.Y or vX.Y.Z, numeric only),
;; a new release commit is made and tagged.
;; If a development version is specified (vX.Y-DEV), a new development commit is made and tagged.
;;
;; If no version is specified, one is autodetected:
;; If the current commit is a development commit, a release commit will be made and tagged
;; If the current commit is a release commit, a development commit will be made and tagged
;; e.g. v0.12-DEV-666-g1234567 will be turned into v0.12
;; and v0.13 will be turned into v0.14-DEV

(import
  :gerbil/gambit/ports
  :std/format :std/misc/ports :std/misc/process :std/srfi/13 :std/srfi/14 :std/sugar :std/pregexp)

;; Where the root to gerbil is.
(def gerbil-root
  (path-normalize (path-expand ".." (path-directory (this-source-file)))))

;; Change the directory to the root of gerbil.
(current-directory gerbil-root)

;; Check that .git is there indeed
(unless (file-exists? ".git") (error "Cannot find .git directory"))

;; Path to the version file
(def version-path
  "src/gerbil/runtime/gx-version.scm")

;; Path to the .gitignore file
(def ignore-path
  ".gitignore")

;; Just run the process on the current console
(def (run-git . arguments)
  (run-process/batch ["git" . arguments]))

;; Validate a version string:
;; Releases are of the form vX.Y where X and Y are major and minor release numbers.
;; Patch releases are of the form: vX.Y.Z where Z is a patch number
;; Development tag is of the form: vX.Y-DEV and comes *before* the vX.Y release,
;; and immediately after the previous release.
;; If strict? is false, the string may also contain a suffix indicating additional git commits:
;; -N-gC where N is a number of commits since the tag and C is the 7-character commit identifier.
;; If strict? is true, then a git commit suffix is not allowed
;;
;; deconstruct-version returns #f if the version is in a wrong format,
;; a list [all major minor patch dev n-commits commit] if it is in the correct format.
;; validate-version-string returns the string unmodified if it passes validation
;; and throws an error if it fails validation (including strict checking for git commit suffix).
(def (deconstruct-version string)
  (pregexp-match
   "^v([0-9]+)[.]([0-9]+)(?:([.][0-9]+)|-(DEV)|)(?:-([0-9])+-g([0-9a-f]{7}))?$"
   string))

(def (validate-version-string string strict?: (strict? #f))
  (unless (match (deconstruct-version string)
            ([all major minor patch dev n-commits commit]
             (not (and strict? n-commits)))
            (_ #f))
    (error "Invalid version string" string))
  string)


;; Compute next development version from the current release version
(def (next-development-version version)
  (match (pregexp-match "^v([0-9]+)[.]([0-9]+)(?:[.-].*)?$" version)
    ([_ major minor] (format "v~A.~A-DEV" major (+ 1 (string->number minor))))
    (_ (error "Not a valid version" version))))

;; Compute next release version from the current development version
(def (next-release-version version)
  (match (pregexp-match "^v([0-9]+)[.]([0-9]+)-DEV.*$" version)
    ([_ major minor] (format "v~A.~A" major minor))
    (_ (error "Not a development version" version))))

;; Make a development version commit
(def (make-development-commit version)
  (printf "Making commit for development version ~a~%" version)
  (def files [])
  ;; Remove the version file from git if present
  (when (file-exists? version-path)
    (run-git "rm" "--force" "--quiet" version-path)
    (set! files [version-path]))
  ;; Add the version file back to .gitignore if not present already
  (let ((ignored (read-file-lines ignore-path)))
    (unless (member version-path ignored)
      (call-with-output-file [path: ignore-path append: #t]
        (lambda (port) (fprintf port "~a\n" version-path)))
      (set! files (cons ignore-path files))))
  (if (null? files)
    (printf "No files to commit. Not tagging the existing commit.~%")
    (begin
      ;; Commit that
      (apply
          run-git
        "commit" "--quiet"
        (format "--message=Start development for version ~a" version)
        files)
      ;; Tag the new commit with the desired version
      (run-git "tag" "--force" version))))

;; Make a release commit
(def (make-release-commit version)
  (printf "Making commit for release version ~a~%" version)
  ;; Create the version file
  (call-with-output-file [path: version-path truncate: #t]
    (lambda (port) (fprintf port "(define (gerbil-version-string) \"~a\")\n" version)))
  ;; Remove it from .gitignore
  (def ignore-lines (remove version-path (read-file-lines ignore-path)))
  (call-with-output-file [path: ignore-path truncate: #t]
    (lambda (port) (for-each (lambda (line) (fprintf port "~a\n" line)) ignore-lines)))
  ;; Add and commit those files
  (run-git "add" version-path ignore-path)
  (run-git "commit" "--quiet"
   (format "--message=Gerbil-~a" version)
   version-path ignore-path)
  ;; Tag the new commit with the desired version
  (run-git "tag" "--force" version))

;; Remove newlines at the end of a string
(def (string-trim-newline string)
  (string-trim-right string (char-set #\return #\newline)))

;; Does this version-string represent a release or a development version?
(def (version-release? version-string)
  (not (string-index version-string (char-set #\-))))

;; Main function, to be run from the command line
(def (main (next-version #f))
  (if next-version
    (begin
      (validate-version-string next-version strict?: #t)
      (if (version-release? next-version)
        (make-release-commit next-version)
        (make-development-commit next-version)))
    (let ((previous-git-version
           (validate-version-string
            (string-trim-newline
             (run-process '("git" "describe" "--tags"))))))
      (if (version-release? previous-git-version)
        (make-development-commit (next-development-version previous-git-version))
        (make-release-commit (next-release-version previous-git-version))))))
