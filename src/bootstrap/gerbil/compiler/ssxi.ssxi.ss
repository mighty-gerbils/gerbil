prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   |gxc[1]#verify-procedure!|
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
             gerbil/compiler/ssxi)))
  (declare-type
   |gxc[1]#verify-class!|
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
             gerbil/compiler/ssxi)))
  (declare-type
   |gxc[1]#parse-signature|
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
             gerbil/compiler/ssxi)))
  (declare-type
   |gxc[1]#signature->unchecked-signature|
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
             gerbil/compiler/ssxi))))
