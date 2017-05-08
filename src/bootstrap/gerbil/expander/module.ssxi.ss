prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#module-import::t
   (@struct-type gx#module-import::t #f 4 #f ((final: . #t))))
  (declare-type gx#module-import? (@struct-pred gx#module-import::t))
  (declare-type gx#make-module-import (@struct-cons gx#module-import::t))
  (declare-type gx#module-import-source (@struct-getf gx#module-import::t 0))
  (declare-type gx#module-import-name (@struct-getf gx#module-import::t 1))
  (declare-type gx#module-import-phi (@struct-getf gx#module-import::t 2))
  (declare-type gx#module-import-weak? (@struct-getf gx#module-import::t 3))
  (declare-type
   gx#module-import-source-set!
   (@struct-setf gx#module-import::t 0))
  (declare-type
   gx#module-import-name-set!
   (@struct-setf gx#module-import::t 1))
  (declare-type gx#module-import-phi-set! (@struct-setf gx#module-import::t 2))
  (declare-type
   gx#module-import-weak?-set!
   (@struct-setf gx#module-import::t 3))
  (declare-type
   gx#module-export::t
   (@struct-type gx#module-export::t #f 5 #f ((final: . #t))))
  (declare-type gx#module-export? (@struct-pred gx#module-export::t))
  (declare-type gx#make-module-export (@struct-cons gx#module-export::t))
  (declare-type gx#module-export-context (@struct-getf gx#module-export::t 0))
  (declare-type gx#module-export-key (@struct-getf gx#module-export::t 1))
  (declare-type gx#module-export-phi (@struct-getf gx#module-export::t 2))
  (declare-type gx#module-export-name (@struct-getf gx#module-export::t 3))
  (declare-type gx#module-export-weak? (@struct-getf gx#module-export::t 4))
  (declare-type
   gx#module-export-context-set!
   (@struct-setf gx#module-export::t 0))
  (declare-type gx#module-export-key-set! (@struct-setf gx#module-export::t 1))
  (declare-type gx#module-export-phi-set! (@struct-setf gx#module-export::t 2))
  (declare-type
   gx#module-export-name-set!
   (@struct-setf gx#module-export::t 3))
  (declare-type
   gx#module-export-weak?-set!
   (@struct-setf gx#module-export::t 4))
  (declare-type
   gx#import-set::t
   (@struct-type gx#import-set::t #f 3 #f ((final: . #t))))
  (declare-type gx#import-set? (@struct-pred gx#import-set::t))
  (declare-type gx#make-import-set (@struct-cons gx#import-set::t))
  (declare-type gx#import-set-source (@struct-getf gx#import-set::t 0))
  (declare-type gx#import-set-phi (@struct-getf gx#import-set::t 1))
  (declare-type gx#import-set-imports (@struct-getf gx#import-set::t 2))
  (declare-type gx#import-set-source-set! (@struct-setf gx#import-set::t 0))
  (declare-type gx#import-set-phi-set! (@struct-setf gx#import-set::t 1))
  (declare-type gx#import-set-imports-set! (@struct-setf gx#import-set::t 2))
  (declare-type
   gx#export-set::t
   (@struct-type gx#export-set::t #f 3 #f ((final: . #t))))
  (declare-type gx#export-set? (@struct-pred gx#export-set::t))
  (declare-type gx#make-export-set (@struct-cons gx#export-set::t))
  (declare-type gx#export-set-source (@struct-getf gx#export-set::t 0))
  (declare-type gx#export-set-phi (@struct-getf gx#export-set::t 1))
  (declare-type gx#export-set-exports (@struct-getf gx#export-set::t 2))
  (declare-type gx#export-set-source-set! (@struct-setf gx#export-set::t 0))
  (declare-type gx#export-set-phi-set! (@struct-setf gx#export-set::t 1))
  (declare-type gx#export-set-exports-set! (@struct-setf gx#export-set::t 2))
  (declare-type
   gx#import-expander::t
   (@struct-type gx#import-expander::t gx#user-expander::t 0 :init! ()))
  (declare-type gx#import-expander? (@struct-pred gx#import-expander::t))
  (declare-type gx#make-import-expander (@struct-cons gx#import-expander::t))
  (declare-type
   gx#export-expander::t
   (@struct-type gx#export-expander::t gx#user-expander::t 0 :init! ()))
  (declare-type gx#export-expander? (@struct-pred gx#export-expander::t))
  (declare-type gx#make-export-expander (@struct-cons gx#export-expander::t)))
