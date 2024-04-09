prelude: :gerbil/compiler/ssxi
package: gerbil/core

(begin
  (declare-class
   gerbil/core/contract~InterfaceInfo#interface-info::t
   (@class gerbil/core/contract~InterfaceInfo#interface-info::t
           ()
           (object::t t::t)
           (name interface-mixin
                 interface-methods
                 instance-type
                 interface-descriptor
                 instance-constructor
                 instance-try-constructor
                 instance-predicate
                 instance-satisfies-predicate
                 implementation-methods
                 unchecked-implementation-methods)
           (name interface-mixin
                 interface-methods
                 instance-type
                 interface-descriptor
                 instance-constructor
                 instance-try-constructor
                 instance-predicate
                 instance-satisfies-predicate
                 implementation-methods
                 unchecked-implementation-methods)
           #f
           #f
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander))))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info::t
   (optimizer-resolve-class
    '(typedecl gerbil/core/contract~InterfaceInfo#interface-info::t)
    'class::t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info?
   (@predicate gerbil/core/contract~InterfaceInfo#interface-info::t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#make-interface-info
   (@constructor gerbil/core/contract~InterfaceInfo#interface-info::t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-name
   (@accessor gerbil/core/contract~InterfaceInfo#interface-info::t name #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-mixin
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-type
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-type
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-descriptor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-constructor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-try-constructor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-predicate
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-satisfies-predicate
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    implementation-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    unchecked-implementation-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-name-set!
   (@mutator gerbil/core/contract~InterfaceInfo#interface-info::t name #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-mixin
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-type-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-type
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-descriptor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-constructor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-try-constructor
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-predicate
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-satisfies-predicate
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    implementation-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    unchecked-implementation-methods
    #t))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-name
   (@accessor gerbil/core/contract~InterfaceInfo#interface-info::t name #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-mixin
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-methods
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-type
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-type
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-descriptor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-constructor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-try-constructor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-predicate
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-satisfies-predicate
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    implementation-methods
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods
   (@accessor
    gerbil/core/contract~InterfaceInfo#interface-info::t
    unchecked-implementation-methods
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-name-set!
   (@mutator gerbil/core/contract~InterfaceInfo#interface-info::t name #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-mixin
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-methods
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-type-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-type
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    interface-descriptor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-constructor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-try-constructor
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-predicate
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    instance-satisfies-predicate
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    implementation-methods
    #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods-set!
   (@mutator
    gerbil/core/contract~InterfaceInfo#interface-info::t
    unchecked-implementation-methods
    #f))
  (declare-method
   gerbil/core/contract~InterfaceInfo#interface-info::t
   apply-macro-expander
   gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
   #f)
  (declare-type
   gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
   (@lambda 1 #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
   (@lambda 2 #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
   (@lambda 1 #f))
  (declare-type
   gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
   (@case-lambda
    (1 gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0)
    (2 gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%)))
  (declare-class
   |gerbil/core/contract~TypeReference[1]#type-reference::t|
   (@class gerbil/core/contract~TypeReference#type-reference::t
           ()
           (object::t t::t)
           (identifier)
           (identifier)
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#type-reference::t|
   (optimizer-resolve-class
    '(typedecl |gerbil/core/contract~TypeReference[1]#type-reference::t|)
    'class::t))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#type-reference?|
   (@predicate |gerbil/core/contract~TypeReference[1]#type-reference::t|))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#make-type-reference|
   (@constructor |gerbil/core/contract~TypeReference[1]#type-reference::t|))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#type-reference-identifier|
   (@accessor
    |gerbil/core/contract~TypeReference[1]#type-reference::t|
    identifier
    #t))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#type-reference-identifier-set!|
   (@mutator
    |gerbil/core/contract~TypeReference[1]#type-reference::t|
    identifier
    #t))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#&type-reference-identifier|
   (@accessor
    |gerbil/core/contract~TypeReference[1]#type-reference::t|
    identifier
    #f))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#&type-reference-identifier-set!|
   (@mutator
    |gerbil/core/contract~TypeReference[1]#type-reference::t|
    identifier
    #f))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#type-identifier?|
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#resolve-type|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
   (@lambda 2 #f))
  (declare-class
   gerbil/core/contract~TypeEnv#type-env::t
   (@class gerbil/core/contract~TypeEnv#type-env::t
           ()
           (object::t t::t)
           (var type checked? super)
           (var type checked? super)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env::t
   (optimizer-resolve-class
    '(typedecl gerbil/core/contract~TypeEnv#type-env::t)
    'class::t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env?
   (@predicate gerbil/core/contract~TypeEnv#type-env::t))
  (declare-type
   gerbil/core/contract~TypeEnv#make-type-env
   (@constructor gerbil/core/contract~TypeEnv#type-env::t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-var
   (@accessor gerbil/core/contract~TypeEnv#type-env::t var #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-type
   (@accessor gerbil/core/contract~TypeEnv#type-env::t type #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-checked?
   (@accessor gerbil/core/contract~TypeEnv#type-env::t checked? #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-super
   (@accessor gerbil/core/contract~TypeEnv#type-env::t super #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-var-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t var #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-type-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t type #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-checked?-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t checked? #t))
  (declare-type
   gerbil/core/contract~TypeEnv#type-env-super-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t super #t))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-var
   (@accessor gerbil/core/contract~TypeEnv#type-env::t var #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-type
   (@accessor gerbil/core/contract~TypeEnv#type-env::t type #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-checked?
   (@accessor gerbil/core/contract~TypeEnv#type-env::t checked? #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-super
   (@accessor gerbil/core/contract~TypeEnv#type-env::t super #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-var-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t var #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-type-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t type #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-checked?-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t checked? #f))
  (declare-type
   gerbil/core/contract~TypeEnv#&type-env-super-set!
   (@mutator gerbil/core/contract~TypeEnv#type-env::t super #f))
  (declare-type gerbil/core/contract~TypeEnv#current-type-env (@lambda 0 #f))
  (declare-type gerbil/core/contract~TypeEnv#type-env-lookup (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#!class-slot-type|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#!class-slot-default|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#!class-slot-contract|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#dotted-identifier?|
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   |gerbil/core/contract~Using[1]#split-dotted-identifier|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#get-slot-accessor|
   (@lambda 3 #f))
  (declare-type
   |gerbil/core/contract~Using[1]#get-slot-mutator|
   (@lambda 4 #f))
  (declare-type
   gerbil/core/contract~ClassMeta#!class-precedence-list
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature!__%|
   (@lambda 6 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature!__@|
   (@kw-lambda-dispatch
    (optionals: keywords:)
    |gerbil/core/contract~Interface[1]#check-signature!__%|))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature!|
   (@kw-lambda
    (optionals: keywords:)
    |gerbil/core/contract~Interface[1]#check-signature!__@|))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-valid-type!|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature-spec!__%|
   (@lambda 5 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature-spec!__@|
   (@kw-lambda-dispatch
    (optionals: keywords:)
    |gerbil/core/contract~Interface[1]#check-signature-spec!__%|))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature-spec!|
   (@kw-lambda
    (optionals: keywords:)
    |gerbil/core/contract~Interface[1]#check-signature-spec!__@|))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-contract?|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#check-signature-contract-types!|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-arguments-in|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-arguments-out|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#make-interface-method-lambda-signature|
   (@lambda 6 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#make-interface-method-contract|
   (@lambda 5 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
   (@lambda 4 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#make-procedure-contract|
   (@lambda 3 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#compatible-signatures?|
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   |gerbil/core/contract~Interface[1]#compatible-signature-type-contract?|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#compatible-type-contract?|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#contract-type-subtype?|
   (@lambda 2 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-type-contract|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-arity|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#signature-keywords|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/contract~Interface[1]#symbol<?|
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   |gerbil/core/contract~Interface[1]#keyword<?|
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
   (@lambda 1 #f)))
