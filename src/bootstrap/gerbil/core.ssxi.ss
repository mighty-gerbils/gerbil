prelude: :gerbil/compiler/ssxi
package: gerbil

(begin
  (declare-type |gerbil/core$<MOP>$<MOP:1>[1]#module-type-id| (@lambda 1 #f))
  (declare-type
   |gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
   (@lambda 1 #f))
  (declare-type |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| (@lambda 2 #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#class-type-info::t
   (@class gerbil.core#class-type-info::t
           ()
           ()
           (id name
               super
               slots
               struct?
               final?
               metaclass
               constructor-method
               type-descriptor
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators)
           (id name
               super
               slots
               struct?
               final?
               metaclass
               constructor-method
               type-descriptor
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#class-type-info?
   (@predicate gerbil/core$<MOP>$<MOP:2>#class-type-info::t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#make-class-type-info
   (@constructor gerbil/core$<MOP>$<MOP:2>#class-type-info::t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-id
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t id #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-name
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t name #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-super
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t super #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-slots
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t slots #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-struct?
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t struct? #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-final?
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t final? #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-metaclass
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t metaclass #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-method
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    constructor-method
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t type-descriptor #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-constructor
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t constructor #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-predicate
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t predicate #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-accessors
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t accessors #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-mutators
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t mutators #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-accessors
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-accessors
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-mutators
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-mutators
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-id-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t id #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-name-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t name #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-super-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t super #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-slots-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t slots #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-struct?-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t struct? #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-final?-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t final? #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-metaclass-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t metaclass #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-method-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    constructor-method
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t type-descriptor #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t constructor #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-predicate-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t predicate #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-accessors-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t accessors #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-mutators-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t mutators #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-accessors-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-accessors
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-mutators-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-mutators
    #t))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-id
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t id #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-name
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t name #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-super
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t super #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-slots
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t slots #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-struct?
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t struct? #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-final?
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t final? #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-metaclass
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t metaclass #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-method
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    constructor-method
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-descriptor
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t type-descriptor #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t constructor #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-predicate
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t predicate #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-accessors
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t accessors #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-mutators
   (@accessor gerbil/core$<MOP>$<MOP:2>#class-type-info::t mutators #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-accessors
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-accessors
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-mutators
   (@accessor
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-mutators
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-id-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t id #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-name-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t name #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-super-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t super #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-slots-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t slots #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-struct?-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t struct? #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-final?-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t final? #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-metaclass-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t metaclass #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-method-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    constructor-method
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-descriptor-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t type-descriptor #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t constructor #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-predicate-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t predicate #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-accessors-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t accessors #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-mutators-set!
   (@mutator gerbil/core$<MOP>$<MOP:2>#class-type-info::t mutators #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-accessors-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-accessors
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-mutators-set!
   (@mutator
    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
    unchecked-mutators
    #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander
   (@lambda 2 #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
   (@lambda 2 #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
   (@lambda 1 #f))
  (declare-type
   gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
   (@case-lambda
    (1 gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0)
    (2 gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%)))
  (declare-type |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?| (@lambda 1 #f))
  (declare-type
   |gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
   (@lambda 5 #f))
  (declare-type
   gerbil/core$<macro-object>#macro-object::t
   (@class gerbil.core#macro-object::t
           ()
           ()
           (macro)
           (macro)
           #f
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gerbil/core$<macro-object>#macro-object::apply-macro-expander))))
  (declare-type
   gerbil/core$<macro-object>#macro-object?
   (@predicate gerbil/core$<macro-object>#macro-object::t))
  (declare-type
   gerbil/core$<macro-object>#make-macro-object
   (@constructor gerbil/core$<macro-object>#macro-object::t))
  (declare-type
   gerbil/core$<macro-object>#macro-object-macro
   (@accessor gerbil/core$<macro-object>#macro-object::t macro #t))
  (declare-type
   gerbil/core$<macro-object>#macro-object-macro-set!
   (@mutator gerbil/core$<macro-object>#macro-object::t macro #t))
  (declare-type
   gerbil/core$<macro-object>#&macro-object-macro
   (@accessor gerbil/core$<macro-object>#macro-object::t macro #f))
  (declare-type
   gerbil/core$<macro-object>#&macro-object-macro-set!
   (@mutator gerbil/core$<macro-object>#macro-object::t macro #f))
  (declare-type
   gerbil/core$<macro-object>#macro-object::apply-macro-expander
   (@lambda 2 #f))
  (declare-type
   gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
   (@lambda 1 #f))
  (declare-method
   gerbil/core$<macro-object>#macro-object::t
   apply-macro-expander
   gerbil/core$<macro-object>#macro-object::apply-macro-expander
   #f)
  (declare-type
   |gerbil/core$<match>[1]#match-macro::t|
   (@class gerbil.core#match-macro::t
           (gerbil/core$<macro-object>#macro-object::t)
           (gerbil/core$<macro-object>#macro-object::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core$<match>[1]#match-macro?|
   (@predicate |gerbil/core$<match>[1]#match-macro::t|))
  (declare-type
   |gerbil/core$<match>[1]#make-match-macro|
   (@constructor |gerbil/core$<match>[1]#match-macro::t|))
  (declare-type
   |gerbil/core$<match>[1]#match-macro-macro|
   (@accessor |gerbil/core$<match>[1]#match-macro::t| macro #t))
  (declare-type
   |gerbil/core$<match>[1]#match-macro-macro-set!|
   (@mutator |gerbil/core$<match>[1]#match-macro::t| macro #t))
  (declare-type
   |gerbil/core$<match>[1]#&match-macro-macro|
   (@accessor |gerbil/core$<match>[1]#match-macro::t| macro #f))
  (declare-type
   |gerbil/core$<match>[1]#&match-macro-macro-set!|
   (@mutator |gerbil/core$<match>[1]#match-macro::t| macro #f))
  (declare-type
   |gerbil/core$<match>[1]#syntax-local-match-macro?|
   (@lambda 1 #f))
  (declare-type |gerbil/core$<match>[1]#parse-match-pattern__%| (@lambda 2 #f))
  (declare-type |gerbil/core$<match>[1]#parse-match-pattern__0| (@lambda 1 #f))
  (declare-type
   |gerbil/core$<match>[1]#parse-match-pattern|
   (@case-lambda
    (1 |gerbil/core$<match>[1]#parse-match-pattern__0|)
    (2 |gerbil/core$<match>[1]#parse-match-pattern__%|)))
  (declare-type |gerbil/core$<match>[1]#match-pattern?| (@lambda 1 #f))
  (declare-type |gerbil/core$<match>[1]#match-pattern-vars| (@lambda 1 #f))
  (declare-type |gerbil/core$<match>[1]#generate-match1| (@lambda 5 #f))
  (declare-type |gerbil/core$<match>[1]#generate-match*| (@lambda 3 #f))
  (declare-type |gerbil/core$<match>[1]#generate-match| (@lambda 3 #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setq-macro::t|
   (@class gerbil.core#setq-macro::t
           (gerbil/core$<macro-object>#macro-object::t)
           (gerbil/core$<macro-object>#macro-object::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setq-macro?|
   (@predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (declare-type
   |gerbil/core$<more-sugar>[1]#make-setq-macro|
   (@constructor |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setq-macro-macro|
   (@accessor |gerbil/core$<more-sugar>[1]#setq-macro::t| macro #t))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setq-macro-macro-set!|
   (@mutator |gerbil/core$<more-sugar>[1]#setq-macro::t| macro #t))
  (declare-type
   |gerbil/core$<more-sugar>[1]#&setq-macro-macro|
   (@accessor |gerbil/core$<more-sugar>[1]#setq-macro::t| macro #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#&setq-macro-macro-set!|
   (@mutator |gerbil/core$<more-sugar>[1]#setq-macro::t| macro #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setf-macro::t|
   (@class gerbil.core#setf-macro::t
           (gerbil/core$<macro-object>#macro-object::t)
           (gerbil/core$<macro-object>#macro-object::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setf-macro?|
   (@predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (declare-type
   |gerbil/core$<more-sugar>[1]#make-setf-macro|
   (@constructor |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setf-macro-macro|
   (@accessor |gerbil/core$<more-sugar>[1]#setf-macro::t| macro #t))
  (declare-type
   |gerbil/core$<more-sugar>[1]#setf-macro-macro-set!|
   (@mutator |gerbil/core$<more-sugar>[1]#setf-macro::t| macro #t))
  (declare-type
   |gerbil/core$<more-sugar>[1]#&setf-macro-macro|
   (@accessor |gerbil/core$<more-sugar>[1]#setf-macro::t| macro #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#&setf-macro-macro-set!|
   (@mutator |gerbil/core$<more-sugar>[1]#setf-macro::t| macro #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core$<module-sugar>[1]#module-import-rename|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core$<module-sugar>[1]#module-export-rename|
   (@lambda 2 #f)))
