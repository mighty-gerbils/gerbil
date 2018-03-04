prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#module-import::t
   (@struct-type gx#module-import::t #f 4 #f ((final: . #t))))
  (declare-type gx#module-import? (@struct-pred gx#module-import::t))
  (declare-type gx#make-module-import (@struct-cons gx#module-import::t))
  (declare-type
   gx#module-import-source
   (@struct-getf gx#module-import::t 0 #f))
  (declare-type gx#module-import-name (@struct-getf gx#module-import::t 1 #f))
  (declare-type gx#module-import-phi (@struct-getf gx#module-import::t 2 #f))
  (declare-type gx#module-import-weak? (@struct-getf gx#module-import::t 3 #f))
  (declare-type
   gx#module-import-source-set!
   (@struct-setf gx#module-import::t 0 #f))
  (declare-type
   gx#module-import-name-set!
   (@struct-setf gx#module-import::t 1 #f))
  (declare-type
   gx#module-import-phi-set!
   (@struct-setf gx#module-import::t 2 #f))
  (declare-type
   gx#module-import-weak?-set!
   (@struct-setf gx#module-import::t 3 #f))
  (declare-type
   gx#module-export::t
   (@struct-type gx#module-export::t #f 5 #f ((final: . #t))))
  (declare-type gx#module-export? (@struct-pred gx#module-export::t))
  (declare-type gx#make-module-export (@struct-cons gx#module-export::t))
  (declare-type
   gx#module-export-context
   (@struct-getf gx#module-export::t 0 #f))
  (declare-type gx#module-export-key (@struct-getf gx#module-export::t 1 #f))
  (declare-type gx#module-export-phi (@struct-getf gx#module-export::t 2 #f))
  (declare-type gx#module-export-name (@struct-getf gx#module-export::t 3 #f))
  (declare-type gx#module-export-weak? (@struct-getf gx#module-export::t 4 #f))
  (declare-type
   gx#module-export-context-set!
   (@struct-setf gx#module-export::t 0 #f))
  (declare-type
   gx#module-export-key-set!
   (@struct-setf gx#module-export::t 1 #f))
  (declare-type
   gx#module-export-phi-set!
   (@struct-setf gx#module-export::t 2 #f))
  (declare-type
   gx#module-export-name-set!
   (@struct-setf gx#module-export::t 3 #f))
  (declare-type
   gx#module-export-weak?-set!
   (@struct-setf gx#module-export::t 4 #f))
  (declare-type
   gx#import-set::t
   (@struct-type gx#import-set::t #f 3 #f ((final: . #t))))
  (declare-type gx#import-set? (@struct-pred gx#import-set::t))
  (declare-type gx#make-import-set (@struct-cons gx#import-set::t))
  (declare-type gx#import-set-source (@struct-getf gx#import-set::t 0 #f))
  (declare-type gx#import-set-phi (@struct-getf gx#import-set::t 1 #f))
  (declare-type gx#import-set-imports (@struct-getf gx#import-set::t 2 #f))
  (declare-type gx#import-set-source-set! (@struct-setf gx#import-set::t 0 #f))
  (declare-type gx#import-set-phi-set! (@struct-setf gx#import-set::t 1 #f))
  (declare-type
   gx#import-set-imports-set!
   (@struct-setf gx#import-set::t 2 #f))
  (declare-type
   gx#export-set::t
   (@struct-type gx#export-set::t #f 3 #f ((final: . #t))))
  (declare-type gx#export-set? (@struct-pred gx#export-set::t))
  (declare-type gx#make-export-set (@struct-cons gx#export-set::t))
  (declare-type gx#export-set-source (@struct-getf gx#export-set::t 0 #f))
  (declare-type gx#export-set-phi (@struct-getf gx#export-set::t 1 #f))
  (declare-type gx#export-set-exports (@struct-getf gx#export-set::t 2 #f))
  (declare-type gx#export-set-source-set! (@struct-setf gx#export-set::t 0 #f))
  (declare-type gx#export-set-phi-set! (@struct-setf gx#export-set::t 1 #f))
  (declare-type
   gx#export-set-exports-set!
   (@struct-setf gx#export-set::t 2 #f))
  (declare-method gx#module-context::t :init! gx#module-context:::init! #f)
  (declare-type
   gx#prelude-context:::init!
   (@case-lambda
    (2 gx#prelude-context:::init!__0)
    (3 gx#prelude-context:::init!__%)))
  (declare-method gx#prelude-context::t :init! gx#prelude-context:::init! #f)
  (declare-method gx#import-expander::t :init! gx#import-expander:::init! #f)
  (declare-method gx#export-expander::t :init! gx#export-expander:::init! #f)
  (declare-method
   gx#import-export-expander::t
   :init!
   gx#import-export-expander:::init!
   #f)
  (declare-method
   gx#import-expander::t
   apply-import-expander
   gx#import-expander::apply-import-expander
   #f)
  (declare-method
   gx#export-expander::t
   apply-export-expander
   gx#export-expander::apply-export-expander
   #f)
  (declare-type
   gx#import-module
   (@case-lambda
    (1 gx#import-module__0)
    (2 gx#import-module__1)
    (3 gx#import-module__%)))
  (declare-type
   gx#core-context-prelude
   (@case-lambda
    (0 gx#core-context-prelude__0)
    (1 gx#core-context-prelude__%)))
  (declare-type
   gx#core-import-module
   (@case-lambda (1 gx#core-import-module__0) (2 gx#core-import-module__%)))
  (declare-type
   gx#core-resolve-module-path
   (@case-lambda
    (1 gx#core-resolve-module-path__0)
    (2 gx#core-resolve-module-path__%)))
  (declare-type
   gx#core-library-package-plist
   (@case-lambda
    (1 gx#core-library-package-plist__0)
    (2 gx#core-library-package-plist__%)))
  (declare-type
   gx#core-bind-import!
   (@case-lambda
    (1 gx#core-bind-import!__0)
    (2 gx#core-bind-import!__1)
    (3 gx#core-bind-import!__%)))
  (declare-type
   gx#core-bind-weak-import!
   (@case-lambda
    (1 gx#core-bind-weak-import!__0)
    (2 gx#core-bind-weak-import!__%)))
  (declare-type
   gx#core-module-export->import
   (@case-lambda
    (1 gx#core-module-export->import__0)
    (2 gx#core-module-export->import__1)
    (3 gx#core-module-export->import__%)))
  (declare-type
   gx#core-expand-import%
   (@case-lambda (1 gx#core-expand-import%__0) (2 gx#core-expand-import%__%)))
  (declare-type
   gx#core-expand-export%
   (@case-lambda (1 gx#core-expand-export%__0) (2 gx#core-expand-export%__%)))
  (declare-type
   gx#core-bind-feature!
   (@case-lambda
    (1 gx#core-bind-feature!__0)
    (2 gx#core-bind-feature!__1)
    (3 gx#core-bind-feature!__2)
    (4 gx#core-bind-feature!__%))))
