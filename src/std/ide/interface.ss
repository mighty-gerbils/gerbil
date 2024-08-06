;;; -*- Gerbil -*-
;;; © vyzo
;;; IDE interface
;;(import ./model)
(export #t)
(import ./model)

(interface IDEServer
  ;; updates the workspace tracked files
  ;; added, modified, and removed are lists of file paths.
  (update-workspace (added : :list) (modified : :list) (removed : :list))

  ;; resolve a symbol in source to an entity
  (resolve (src : Source)) => Entity

  ;; finds references of a specific entity within a scope
  ;; - e is the entity for which references should be searched
  ;; - scope can be:
  ;;   - #f, in which case the entire workspace is searched
  ;;   - a file path for searching a specific file/module
  ;;   - a list of file paths for searching specific file/modules
  ;; returns a list of References
  (find-refs (e : Entity) (scope :~ reference-scope? := #f)) => :list

  ;; finds documentation for an entity
  ;; returns a list of Location with relevant documentation
  (find-docs (e : Entity)) => :list

  ;; complete the last symbol in a partial s-expr in some source span
  ;; returns a list of Completions
  (complete (src : Source)) => :list

  ;; evals an sexpr in some source span
  (eval (src : Source)) => Result

  ;; expands an sexpr in some source span
  (expand (src : Source) (fully? : :boolean := #f)) => Result

  ;; visits a file/module
  ;; Returns a parsed representation (SExpr) of the file/module's code
  (visit-file (path : :string)) => Result

  ;; updates the in-memory reprsentation of a file/module
  (update-file (data : :string) (edit : SourceFileSpan) (replace : SourceFileSpan)))

(def (reference-scope? o)
  (or (not o)
      (string? o)
      (and (list? o) (andmap string? o))))
