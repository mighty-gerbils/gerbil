;;; -*- Gerbil -*-
;;; © vyzo
;;; support for defining metaclasses
(import :gerbil/runtime/mop)
(export class)

;; this is the class metaclass expander meta type
;; to allow simple creation of new metaclasses
(defsyntax class
  (make-class-type-info
   id: 'class
   name: 'class
   super: []
   slots: '(id name super flags fields
               precedence-list slot-vector slot-table properties constructor methods)
   struct?: #t
   type-descriptor: (quote-syntax class::t)
   constructor: (quote-syntax make-class-type)
   predicate: (quote-syntax class-type?)
   accessors:
   [['id :: (quote-syntax class-type-id)]
    ['name :: (quote-syntax class-type-name)]
    ['super :: (quote-syntax class-type-super)]
    ['flags :: (quote-syntax class-type-flags)]
    ['fields :: (quote-syntax class-type-fields)]
    ['precedence-list :: (quote-syntax class-type-precedence-list)]
    ['slot-vector :: (quote-syntax class-type-slot-vector)]
    ['slot-table :: (quote-syntax class-type-slot-table)]
    ['properties :: (quote-syntax class-type-properties)]
    ['constructor :: (quote-syntax class-type-constructor)]
    ['methods :: (quote-syntax class-type-methods)]]
   mutators:
   [['id :: (quote-syntax class-type-id-set!)]
    ['name :: (quote-syntax class-type-name-set!)]
    ['super :: (quote-syntax class-type-super-set!)]
    ['flags :: (quote-syntax class-type-flags-set!)]
    ['fields :: (quote-syntax class-type-fields-set!)]
    ['precedence-list :: (quote-syntax class-type-precedence-list-set!)]
    ['slot-vector :: (quote-syntax class-type-slot-vector-set!)]
    ['slot-table :: (quote-syntax class-type-slot-table-set!)]
    ['properties :: (quote-syntax class-type-properties-set!)]
    ['constructor :: (quote-syntax class-type-constructor-set!)]
    ['methods :: (quote-syntax class-type-methods-set!)]]
   unchecked-accessors:
   [['id :: (quote-syntax &class-type-id)]
    ['name :: (quote-syntax &class-type-name)]
    ['super :: (quote-syntax &class-type-super)]
    ['flags :: (quote-syntax &class-type-flags)]
    ['fields :: (quote-syntax &class-type-fields)]
    ['precedence-list :: (quote-syntax &class-type-precedence-list)]
    ['slot-vector :: (quote-syntax &class-type-slot-vector)]
    ['slot-table :: (quote-syntax &class-type-slot-table)]
    ['properties :: (quote-syntax &class-type-properties)]
    ['constructor :: (quote-syntax &class-type-constructor)]
    ['methods :: (quote-syntax class-type-methods-set!)]]
   unchecked-mutators:
   [['id :: (quote-syntax &class-type-id-set!)]
    ['name :: (quote-syntax &class-type-name-set!)]
    ['super :: (quote-syntax &class-type-super-set!)]
    ['flags :: (quote-syntax &class-type-flags-set!)]
    ['fields :: (quote-syntax &class-type-fields!)]
    ['precedence-list :: (quote-syntax &class-type-precedence-list-set!)]
    ['slot-vector :: (quote-syntax &class-type-slot-vector-set!)]
    ['slot-table :: (quote-syntax &class-type-slot-table-set!)]
    ['properties :: (quote-syntax &class-type-properties-set!)]
    ['constructor :: (quote-syntax &class-type-constructor-set!)]
    ['methods :: (quote-syntax &class-type-methods-set!)]]))
