prelude: :gerbil/compiler/ssxi
package: gerbil/core

(begin
  (declare-class
   |gerbil/core/match[1]#match-macro::t|
   (@class gerbil.core#match-macro::t
           (gerbil/core/macro-object#macro-object::t)
           (gerbil/core/macro-object#macro-object::t object::t t::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core/match[1]#match-macro::t|
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   |gerbil/core/match[1]#match-macro?|
   (@predicate |gerbil/core/match[1]#match-macro::t|))
  (declare-type
   |gerbil/core/match[1]#make-match-macro|
   (@constructor |gerbil/core/match[1]#match-macro::t|))
  (declare-type
   |gerbil/core/match[1]#match-macro-macro|
   (@accessor |gerbil/core/match[1]#match-macro::t| macro #t))
  (declare-type
   |gerbil/core/match[1]#match-macro-macro-set!|
   (@mutator |gerbil/core/match[1]#match-macro::t| macro #t))
  (declare-type
   |gerbil/core/match[1]#&match-macro-macro|
   (@accessor |gerbil/core/match[1]#match-macro::t| macro #f))
  (declare-type
   |gerbil/core/match[1]#&match-macro-macro-set!|
   (@mutator |gerbil/core/match[1]#match-macro::t| macro #f))
  (declare-type
   |gerbil/core/match[1]#syntax-local-match-macro?|
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type |gerbil/core/match[1]#parse-match-pattern__%| (@lambda 2 #f))
  (declare-type |gerbil/core/match[1]#parse-match-pattern__0| (@lambda 1 #f))
  (declare-type
   |gerbil/core/match[1]#parse-match-pattern|
   (@case-lambda
    (1 |gerbil/core/match[1]#parse-match-pattern__0|)
    (2 |gerbil/core/match[1]#parse-match-pattern__%|)))
  (declare-type
   |gerbil/core/match[1]#match-pattern?|
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type |gerbil/core/match[1]#match-pattern-vars| (@lambda 1 #f))
  (declare-type |gerbil/core/match[1]#generate-match1| (@lambda 5 #f))
  (declare-type |gerbil/core/match[1]#generate-match*| (@lambda 3 #f))
  (declare-type |gerbil/core/match[1]#generate-match| (@lambda 3 #f)))
