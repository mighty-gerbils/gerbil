prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#__module-registry
   (optimizer-resolve-class '(typedecl gx#__module-registry) 'HashTable::t))
  (declare-type
   gx#__module-pkg-cache
   (optimizer-resolve-class '(typedecl gx#__module-pkg-cache) 'HashTable::t))
  (declare-class
   gx#module-import::t
   (@class gx#module-import::t
           ()
           (object::t t::t)
           (source name phi weak?)
           (source name phi weak?)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#module-import::t
   (optimizer-resolve-class '(typedecl gx#module-import::t) 'class::t))
  (declare-type gx#module-import? (@predicate gx#module-import::t))
  (declare-type gx#make-module-import (@constructor gx#module-import::t))
  (declare-type
   gx#module-import-source
   (@accessor gx#module-import::t source #t))
  (declare-type gx#module-import-name (@accessor gx#module-import::t name #t))
  (declare-type gx#module-import-phi (@accessor gx#module-import::t phi #t))
  (declare-type
   gx#module-import-weak?
   (@accessor gx#module-import::t weak? #t))
  (declare-type
   gx#module-import-source-set!
   (@mutator gx#module-import::t source #t))
  (declare-type
   gx#module-import-name-set!
   (@mutator gx#module-import::t name #t))
  (declare-type
   gx#module-import-phi-set!
   (@mutator gx#module-import::t phi #t))
  (declare-type
   gx#module-import-weak?-set!
   (@mutator gx#module-import::t weak? #t))
  (declare-type
   gx#&module-import-source
   (@accessor gx#module-import::t source #f))
  (declare-type gx#&module-import-name (@accessor gx#module-import::t name #f))
  (declare-type gx#&module-import-phi (@accessor gx#module-import::t phi #f))
  (declare-type
   gx#&module-import-weak?
   (@accessor gx#module-import::t weak? #f))
  (declare-type
   gx#&module-import-source-set!
   (@mutator gx#module-import::t source #f))
  (declare-type
   gx#&module-import-name-set!
   (@mutator gx#module-import::t name #f))
  (declare-type
   gx#&module-import-phi-set!
   (@mutator gx#module-import::t phi #f))
  (declare-type
   gx#&module-import-weak?-set!
   (@mutator gx#module-import::t weak? #f))
  (declare-class
   gx#module-export::t
   (@class gx#module-export::t
           ()
           (object::t t::t)
           (context key phi name weak?)
           (context key phi name weak?)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#module-export::t
   (optimizer-resolve-class '(typedecl gx#module-export::t) 'class::t))
  (declare-type gx#module-export? (@predicate gx#module-export::t))
  (declare-type gx#make-module-export (@constructor gx#module-export::t))
  (declare-type
   gx#module-export-context
   (@accessor gx#module-export::t context #t))
  (declare-type gx#module-export-key (@accessor gx#module-export::t key #t))
  (declare-type gx#module-export-phi (@accessor gx#module-export::t phi #t))
  (declare-type gx#module-export-name (@accessor gx#module-export::t name #t))
  (declare-type
   gx#module-export-weak?
   (@accessor gx#module-export::t weak? #t))
  (declare-type
   gx#module-export-context-set!
   (@mutator gx#module-export::t context #t))
  (declare-type
   gx#module-export-key-set!
   (@mutator gx#module-export::t key #t))
  (declare-type
   gx#module-export-phi-set!
   (@mutator gx#module-export::t phi #t))
  (declare-type
   gx#module-export-name-set!
   (@mutator gx#module-export::t name #t))
  (declare-type
   gx#module-export-weak?-set!
   (@mutator gx#module-export::t weak? #t))
  (declare-type
   gx#&module-export-context
   (@accessor gx#module-export::t context #f))
  (declare-type gx#&module-export-key (@accessor gx#module-export::t key #f))
  (declare-type gx#&module-export-phi (@accessor gx#module-export::t phi #f))
  (declare-type gx#&module-export-name (@accessor gx#module-export::t name #f))
  (declare-type
   gx#&module-export-weak?
   (@accessor gx#module-export::t weak? #f))
  (declare-type
   gx#&module-export-context-set!
   (@mutator gx#module-export::t context #f))
  (declare-type
   gx#&module-export-key-set!
   (@mutator gx#module-export::t key #f))
  (declare-type
   gx#&module-export-phi-set!
   (@mutator gx#module-export::t phi #f))
  (declare-type
   gx#&module-export-name-set!
   (@mutator gx#module-export::t name #f))
  (declare-type
   gx#&module-export-weak?-set!
   (@mutator gx#module-export::t weak? #f))
  (declare-class
   gx#import-set::t
   (@class gx#import-set::t
           ()
           (object::t t::t)
           (source phi imports)
           (source phi imports)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#import-set::t
   (optimizer-resolve-class '(typedecl gx#import-set::t) 'class::t))
  (declare-type gx#import-set? (@predicate gx#import-set::t))
  (declare-type gx#make-import-set (@constructor gx#import-set::t))
  (declare-type gx#import-set-source (@accessor gx#import-set::t source #t))
  (declare-type gx#import-set-phi (@accessor gx#import-set::t phi #t))
  (declare-type gx#import-set-imports (@accessor gx#import-set::t imports #t))
  (declare-type
   gx#import-set-source-set!
   (@mutator gx#import-set::t source #t))
  (declare-type gx#import-set-phi-set! (@mutator gx#import-set::t phi #t))
  (declare-type
   gx#import-set-imports-set!
   (@mutator gx#import-set::t imports #t))
  (declare-type gx#&import-set-source (@accessor gx#import-set::t source #f))
  (declare-type gx#&import-set-phi (@accessor gx#import-set::t phi #f))
  (declare-type gx#&import-set-imports (@accessor gx#import-set::t imports #f))
  (declare-type
   gx#&import-set-source-set!
   (@mutator gx#import-set::t source #f))
  (declare-type gx#&import-set-phi-set! (@mutator gx#import-set::t phi #f))
  (declare-type
   gx#&import-set-imports-set!
   (@mutator gx#import-set::t imports #f))
  (declare-class
   gx#export-set::t
   (@class gx#export-set::t
           ()
           (object::t t::t)
           (source phi exports)
           (source phi exports)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#export-set::t
   (optimizer-resolve-class '(typedecl gx#export-set::t) 'class::t))
  (declare-type gx#export-set? (@predicate gx#export-set::t))
  (declare-type gx#make-export-set (@constructor gx#export-set::t))
  (declare-type gx#export-set-source (@accessor gx#export-set::t source #t))
  (declare-type gx#export-set-phi (@accessor gx#export-set::t phi #t))
  (declare-type gx#export-set-exports (@accessor gx#export-set::t exports #t))
  (declare-type
   gx#export-set-source-set!
   (@mutator gx#export-set::t source #t))
  (declare-type gx#export-set-phi-set! (@mutator gx#export-set::t phi #t))
  (declare-type
   gx#export-set-exports-set!
   (@mutator gx#export-set::t exports #t))
  (declare-type gx#&export-set-source (@accessor gx#export-set::t source #f))
  (declare-type gx#&export-set-phi (@accessor gx#export-set::t phi #f))
  (declare-type gx#&export-set-exports (@accessor gx#export-set::t exports #f))
  (declare-type
   gx#&export-set-source-set!
   (@mutator gx#export-set::t source #f))
  (declare-type gx#&export-set-phi-set! (@mutator gx#export-set::t phi #f))
  (declare-type
   gx#&export-set-exports-set!
   (@mutator gx#export-set::t exports #f))
  (declare-class
   gx#import-expander::t
   (@class gx#import-expander::t
           (gx#user-expander::t)
           (gx#user-expander::t
            gx#macro-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e context phi)
           :init!
           #f
           #f
           #f
           #f
           ((apply-import-expander . gx#import-expander::apply-import-expander)
            (:init! . gx#import-expander:::init!))))
  (declare-type
   gx#import-expander::t
   (optimizer-resolve-class '(typedecl gx#import-expander::t) 'class::t))
  (declare-type gx#import-expander? (@predicate gx#import-expander::t))
  (declare-type gx#make-import-expander (@constructor gx#import-expander::t))
  (declare-type
   gx#import-expander-context
   (@accessor gx#import-expander::t context #t))
  (declare-type
   gx#import-expander-phi
   (@accessor gx#import-expander::t phi #t))
  (declare-type gx#import-expander-e (@accessor gx#import-expander::t e #t))
  (declare-type
   gx#import-expander-context-set!
   (@mutator gx#import-expander::t context #t))
  (declare-type
   gx#import-expander-phi-set!
   (@mutator gx#import-expander::t phi #t))
  (declare-type
   gx#import-expander-e-set!
   (@mutator gx#import-expander::t e #t))
  (declare-type
   gx#&import-expander-context
   (@accessor gx#import-expander::t context #f))
  (declare-type
   gx#&import-expander-phi
   (@accessor gx#import-expander::t phi #f))
  (declare-type gx#&import-expander-e (@accessor gx#import-expander::t e #f))
  (declare-type
   gx#&import-expander-context-set!
   (@mutator gx#import-expander::t context #f))
  (declare-type
   gx#&import-expander-phi-set!
   (@mutator gx#import-expander::t phi #f))
  (declare-type
   gx#&import-expander-e-set!
   (@mutator gx#import-expander::t e #f))
  (declare-class
   gx#export-expander::t
   (@class gx#export-expander::t
           (gx#user-expander::t)
           (gx#user-expander::t
            gx#macro-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e context phi)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . gx#export-expander:::init!)
            (apply-export-expander
             .
             gx#export-expander::apply-export-expander))))
  (declare-type
   gx#export-expander::t
   (optimizer-resolve-class '(typedecl gx#export-expander::t) 'class::t))
  (declare-type gx#export-expander? (@predicate gx#export-expander::t))
  (declare-type gx#make-export-expander (@constructor gx#export-expander::t))
  (declare-type
   gx#export-expander-context
   (@accessor gx#export-expander::t context #t))
  (declare-type
   gx#export-expander-phi
   (@accessor gx#export-expander::t phi #t))
  (declare-type gx#export-expander-e (@accessor gx#export-expander::t e #t))
  (declare-type
   gx#export-expander-context-set!
   (@mutator gx#export-expander::t context #t))
  (declare-type
   gx#export-expander-phi-set!
   (@mutator gx#export-expander::t phi #t))
  (declare-type
   gx#export-expander-e-set!
   (@mutator gx#export-expander::t e #t))
  (declare-type
   gx#&export-expander-context
   (@accessor gx#export-expander::t context #f))
  (declare-type
   gx#&export-expander-phi
   (@accessor gx#export-expander::t phi #f))
  (declare-type gx#&export-expander-e (@accessor gx#export-expander::t e #f))
  (declare-type
   gx#&export-expander-context-set!
   (@mutator gx#export-expander::t context #f))
  (declare-type
   gx#&export-expander-phi-set!
   (@mutator gx#export-expander::t phi #f))
  (declare-type
   gx#&export-expander-e-set!
   (@mutator gx#export-expander::t e #f))
  (declare-class
   gx#import-export-expander::t
   (@class gx#import-export-expander::t
           (gx#import-expander::t gx#export-expander::t)
           (gx#import-expander::t
            gx#export-expander::t
            gx#user-expander::t
            gx#macro-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e context phi)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . gx#import-export-expander:::init!))))
  (declare-type
   gx#import-export-expander::t
   (optimizer-resolve-class
    '(typedecl gx#import-export-expander::t)
    'class::t))
  (declare-type
   gx#import-export-expander?
   (@predicate gx#import-export-expander::t))
  (declare-type
   gx#make-import-export-expander
   (@constructor gx#import-export-expander::t))
  (declare-type
   gx#import-export-expander-context
   (@accessor gx#import-export-expander::t context #t))
  (declare-type
   gx#import-export-expander-phi
   (@accessor gx#import-export-expander::t phi #t))
  (declare-type
   gx#import-export-expander-e
   (@accessor gx#import-export-expander::t e #t))
  (declare-type
   gx#import-export-expander-context-set!
   (@mutator gx#import-export-expander::t context #t))
  (declare-type
   gx#import-export-expander-phi-set!
   (@mutator gx#import-export-expander::t phi #t))
  (declare-type
   gx#import-export-expander-e-set!
   (@mutator gx#import-export-expander::t e #t))
  (declare-type
   gx#&import-export-expander-context
   (@accessor gx#import-export-expander::t context #f))
  (declare-type
   gx#&import-export-expander-phi
   (@accessor gx#import-export-expander::t phi #f))
  (declare-type
   gx#&import-export-expander-e
   (@accessor gx#import-export-expander::t e #f))
  (declare-type
   gx#&import-export-expander-context-set!
   (@mutator gx#import-export-expander::t context #f))
  (declare-type
   gx#&import-export-expander-phi-set!
   (@mutator gx#import-export-expander::t phi #f))
  (declare-type
   gx#&import-export-expander-e-set!
   (@mutator gx#import-export-expander::t e #f))
  (declare-type
   gx#current-import-expander-phi
   (optimizer-resolve-class
    '(typedecl gx#current-import-expander-phi)
    'procedure::t))
  (declare-type
   gx#current-export-expander-phi
   (optimizer-resolve-class
    '(typedecl gx#current-export-expander-phi)
    'procedure::t))
  (declare-type
   gx#current-module-reader-path
   (optimizer-resolve-class
    '(typedecl gx#current-module-reader-path)
    'procedure::t))
  (declare-type
   gx#current-module-reader-args
   (optimizer-resolve-class
    '(typedecl gx#current-module-reader-args)
    'procedure::t))
  (declare-type
   gx#source-file-settings
   (optimizer-resolve-class '(typedecl gx#source-file-settings) 'pair::t))
  (declare-type
   gx#call-with-input-source-file
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#module-context:::init!
   (@lambda 5
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#prelude-context:::init!__%
   (@lambda 3
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#prelude-context:::init!__0
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#prelude-context:::init!
   (@case-lambda
    (2
     gx#prelude-context:::init!__0
     signature:
     (return:
      void::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (3
     gx#prelude-context:::init!__%
     signature:
     (return:
      void::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#import-export-expander-init!
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-expander:::init!
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#export-expander:::init!
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-export-expander:::init!
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-expander::apply-import-expander
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#export-expander::apply-export-expander
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#module-source-path
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-module__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-module__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-module__1
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#import-module
   (@case-lambda
    (1
     gx#import-module__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#import-module__1
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (3
     gx#import-module__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#eval-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-eval-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-context-prelude__%
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-context-prelude__0
   (@lambda 0
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-context-prelude
   (@case-lambda
    (0
     gx#core-context-prelude__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (1
     gx#core-context-prelude__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-module->prelude-context
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-import-module__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-import-module__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-import-module
   (@case-lambda
    (1
     gx#core-import-module__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-import-module__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-read-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-read-module/sexp
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-read-module/lang
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-read-module-package
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-path->namespace
   (@lambda 1
            #f
            signature:
            (return:
             string::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-path->id
   (@lambda 1
            #f
            signature:
            (return:
             symbol::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-resolve-module-path__%
   (@lambda 2
            #f
            signature:
            (return:
             string::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-resolve-module-path__0
   (@lambda 1
            #f
            signature:
            (return:
             string::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-resolve-module-path
   (@case-lambda
    (1
     gx#core-resolve-module-path__0
     signature:
     (return:
      string::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-resolve-module-path__%
     signature:
     (return:
      string::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-resolve-library-module-path
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-resolve-library-relative-module-path
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-library-package-path-prefix
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-library-package-plist__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-library-package-plist__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-library-package-plist
   (@case-lambda
    (1
     gx#core-library-package-plist__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-library-package-plist__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-library-module-path?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-library-relative-module-path?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-special-module-path?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bound-prelude?
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bound-module?
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bound-module-prelude?
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-import!__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-import!__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-import!__1
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-import!
   (@case-lambda
    (1
     gx#core-bind-import!__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-bind-import!__1
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (3
     gx#core-bind-import!__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-bind-weak-import!__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-weak-import!__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-weak-import!
   (@case-lambda
    (1
     gx#core-bind-weak-import!__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-bind-weak-import!__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-resolve-module-export
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-export->import__%
   (@lambda 3
            #f
            signature:
            (return:
             gx#module-import::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-export->import__0
   (@lambda 1
            #f
            signature:
            (return:
             gx#module-import::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-export->import__1
   (@lambda 2
            #f
            signature:
            (return:
             gx#module-import::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-module-export->import
   (@case-lambda
    (1
     gx#core-module-export->import__0
     signature:
     (return:
      gx#module-import::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-module-export->import__1
     signature:
     (return:
      gx#module-import::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (3
     gx#core-module-export->import__%
     signature:
     (return:
      gx#module-import::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-expand-module%
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-module-begin
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-module-body
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-import/export
   (@lambda 5
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-import%__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-import%__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-import%
   (@case-lambda
    (1
     gx#core-expand-import%__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-expand-import%__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-import-nested-module
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-import-source
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-export%__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-export%__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-export%
   (@case-lambda
    (1
     gx#core-expand-export%__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-expand-export%__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))))
  (declare-type
   gx#core-expand-export-source
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-expand-provide%
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-feature!__%
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-feature!__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-feature!__1
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-feature!__2
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/expander/module)))
  (declare-type
   gx#core-bind-feature!
   (@case-lambda
    (1
     gx#core-bind-feature!__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (2
     gx#core-bind-feature!__1
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (3
     gx#core-bind-feature!__2
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module))
    (4
     gx#core-bind-feature!__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/expander/module)))))
