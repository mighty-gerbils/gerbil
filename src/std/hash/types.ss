;;; -*- Gerbil -*-
;;; © vyzo
;;; inner table metaclasses
;;; thjs is partial information to enable things like serde
;;; Note: if more info is needed it can be added, but this
;;; is quite safety critical.
(export #t)

(defsyntax hash-table
  (make-class-type-info
   id: 'hash-table::t
   name: 'hash-table
   struct?: #t
   super: [(quote-syntax :t)]
   type-descriptor: (quote-syntax hash-table::t)
   precedence-list: [(quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax gc-hash-table
  (make-class-type-info
   id: 'gc-hash-table::t
   name: 'gc-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax gc-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax eq-hash-table
  (make-class-type-info
   id: 'eq-hash-table::t
   name: 'eq-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax eq-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax eqv-hash-table
  (make-class-type-info
   id: 'eqv-hash-table::t
   name: 'eqv-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax eqv-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax symbol-hash-table
  (make-class-type-info
   id: 'symbol-hash-table::t
   name: 'symbol-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax symbol-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax string-hash-table
  (make-class-type-info
   id: 'string-hash-table::t
   name: 'string-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax string-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))

(defsyntax immediate-hash-table
  (make-class-type-info
   id: 'immediate-hash-table::t
   name: 'immediate-hash-table
   struct?: #t
   super: [(quote-syntax hash-table)]
   type-descriptor: (quote-syntax immediate-hash-table::t)
   precedence-list: [(quote-syntax hash-table::t)
		     (quote-syntax objectt::t)
		     (quote-syntax t::t)]
   ))
