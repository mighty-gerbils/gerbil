;;; -*- Gerbil -*-
;;; © vyzo
;;; IDE model types
(import :std/actor-v18/message)
(export #t)

;; base class for serializable objects; actor io
(defclass (Serializable message) ())

;; source locations and anchors
(defclass (Source Serializable) ())
(defclass (SourceString Source) ((value : :string)))
(defclass (File Serializable) ((path : :string)))
(defclass (Pos Serializable) ((line : :fixnum) (col : :fixnum)))
(defclass (Span Serializable) ((start : Pos) (end : Pos)))

(defclass (SourceFilePos Source File Pos) ())
(defclass (SourceFileSpan Source File Span) ())
(defclass (SourceFileString SourceString File) ())
(defclass (ModuleRef Serializable) ((module : :symbol)))
(defclass (SourceModuleString SourceString ModuleRef) ())
(defclass (SourceFileModuleString SourceModuleString File) ())

;; uniquely identifiable entities
(defclass (Entity Serializable)
  ((id   : :symbol)                   ; the entity identifier
   (name : :symbol)                   ; the human "name" of the entity
   (ctx  : :t)))     ; the context of the identifier

;; base class for entity types
(defclass (Type Entity) ())

;; identifiers
(defclass (Identifier Entity)
  ((type  :? Type)))

;; identifier types
(defclass (MetaObject Type) ())
(defclass (Class MetaObject) ())
(defclass (Interface MetaObject) ())

(defclass (Object Type) ())
(defclass (StandardObject Object) ())
(defclass (ClassInstance StandardObject) ())
(defclass (InterfaceInstance StandardObject) ())
(defclass (SystemObject Object) ())
(defclass (Procedure SystemObject) ())

(defclass (MetaSyntacticObject Type) ())
(defclass (Macro MetaSyntacticObject) ())
(defclass (Module MetaSyntacticObject) ())

;; completions
(defclass (Completion Serializable)
  ((symbol : :symbol)   ; the completion symbol
   (entity : Entity)))  ; the completion entity

;; objects with a location
(defclass (Location Serializable) ((loc : SourceFileSpan)))

;; entity source references
(defclass (Reference Location)
  ((e : Entity)))    ; the entity referred

;; evaluation and expansion results
(defclass (Result Serializable) ())

;; S-Expressions
(defclass (SExpr Result)
  ((hd : :symbol)
   (e  : :list)))

;; literal values
(defclass (Literal Result)
  ((value : :string)))

;; errors
(defclass (Error Result)
  ((msg : :string)))

;; register message classes for actor io
(defsyntax (declare-serializable stx)
  (syntax-case stx ()
    ((_ id ...)
     (with-syntax (((id::t ...)
                    (stx-map (lambda (id) (stx-identifier id id "::t")) #'(id ...))))
       #'(begin
           (register-message-type! id::t)
           ...)))))

(declare-serializable
 Serializable
 Source
 SourceString
 File
 Pos
 Span
 SourceFilePos
 SourceFileSpan
 SourceFileString
 ModuleRef
 SourceModuleString
 SourceFileModuleString
 Entity
 Type
 Identifier
 MetaObject
 Class
 Interface
 StandardObject
 ClassInstance
 InterfaceInstance
 SystemObject
 Procedure
 MetaSyntacticObject
 Macro
 Module
 Completion
 Location
 Reference
 Result
 Literal
 SExpr
 Error)
