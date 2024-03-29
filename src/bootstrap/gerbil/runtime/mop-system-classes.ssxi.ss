prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-class
   immediate::t
   (@class immediate () (t::t) () () #f #f #f #f #f #f))
  (declare-type immediate::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   char::t
   (@class char (immediate::t) (immediate::t t::t) () () #f #f #f #f #f #f))
  (declare-type char::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   boolean::t
   (@class boolean (immediate::t) (immediate::t t::t) () () #f #f #f #f #f #f))
  (declare-type boolean::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   atom::t
   (@class atom (immediate::t) (immediate::t t::t) () () #f #f #f #f #f #f))
  (declare-type atom::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   void::t
   (@class void (atom::t) (atom::t immediate::t t::t) () () #f #f #f #f #f #f))
  (declare-type void::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   eof::t
   (@class eof (atom::t) (atom::t immediate::t t::t) () () #f #f #f #f #f #f))
  (declare-type eof::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   true::t
   (@class true
           (boolean::t atom::t)
           (boolean::t atom::t immediate::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type true::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   false::t
   (@class false
           (boolean::t atom::t)
           (boolean::t atom::t immediate::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type false::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   special::t
   (@class special
           (atom::t)
           (atom::t immediate::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type special::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class number::t (@class number () (t::t) () () #f #f #f #f #f #f))
  (declare-type number::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   real::t
   (@class real (number::t) (number::t t::t) () () #f #f #f #f #f #f))
  (declare-type real::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   integer::t
   (@class integer (real::t) (real::t number::t t::t) () () #f #f #f #f #f #f))
  (declare-type integer::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   fixnum::t
   (@class fixnum
           (integer::t immediate::t)
           (integer::t real::t number::t immediate::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type fixnum::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   bignum::t
   (@class bignum
           (integer::t)
           (integer::t real::t number::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type bignum::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   ratnum::t
   (@class ratnum (real::t) (real::t number::t t::t) () () #f #f #f #f #f #f))
  (declare-type ratnum::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   flonum::t
   (@class flonum (real::t) (real::t number::t t::t) () () #f #f #f #f #f #f))
  (declare-type flonum::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   cpxnum::t
   (@class cpxnum (number::t) (number::t t::t) () () #f #f #f #f #f #f))
  (declare-type cpxnum::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   symbolic::t
   (@class symbolic () (t::t) () () #f #f #f #f #f #f))
  (declare-type symbolic::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   symbol::t
   (@class symbol (symbolic::t) (symbolic::t t::t) () () #f #f #f #f #f #f))
  (declare-type symbol::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   keyword::t
   (@class keyword (symbolic::t) (symbolic::t t::t) () () #f #f #f #f #f #f))
  (declare-type keyword::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class list::t (@class list () (t::t) () () #f #f #f #f #f #f))
  (declare-type list::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   pair::t
   (@class pair (list::t) (list::t t::t) () () #f #f #f #f #f #f))
  (declare-type pair::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   null::t
   (@class null
           (list::t atom::t)
           (list::t atom::t immediate::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type null::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   sequence::t
   (@class sequence () (t::t) () () #f #f #f #f #f #f))
  (declare-type sequence::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   vector::t
   (@class vector (sequence::t) (sequence::t t::t) () () #f #f #f #f #f #f))
  (declare-type vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   string::t
   (@class string (sequence::t) (sequence::t t::t) () () #f #f #f #f #f #f))
  (declare-type string::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   hvector::t
   (@class hvector (sequence::t) (sequence::t t::t) () () #f #f #f #f #f #f))
  (declare-type hvector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   u8vector::t
   (@class u8vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type u8vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   s8vector::t
   (@class s8vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type s8vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   u16vector::t
   (@class u16vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type u16vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   s16vector::t
   (@class s16vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type s16vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   u32vector::t
   (@class u32vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type u32vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   s32vector::t
   (@class s32vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type s32vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   u64vector::t
   (@class u64vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type u64vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   s64vector::t
   (@class s64vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type s64vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   f32vector::t
   (@class f32vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type f32vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   f64vector::t
   (@class f64vector
           (hvector::t)
           (hvector::t sequence::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type f64vector::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class values::t (@class values () (t::t) () () #f #f #f #f #f #f))
  (declare-type values::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class box::t (@class box () (t::t) () () #f #f #f #f #f #f))
  (declare-type box::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class frame::t (@class frame () (t::t) () () #f #f #f #f #f #f))
  (declare-type frame::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   continuation::t
   (@class continuation () (t::t) () () #f #f #f #f #f #f))
  (declare-type continuation::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class promise::t (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type promise::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class weak::t (@class weak () (t::t) () () #f #f #f #f #f #f))
  (declare-type weak::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class foreign::t (@class foreign () (t::t) () () #f #f #f #f #f #f))
  (declare-type foreign::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   procedure::t
   (@class procedure () (t::t) () () #f #f #f #f #f #f))
  (declare-type procedure::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class return::t (@class return () (t::t) () () #f #f #f #f #f #f))
  (declare-type return::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class time::t (@class time::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type time::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   thread::t
   (@class thread::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type thread::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   thread-group::t
   (@class thread-group::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type thread-group::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class mutex::t (@class mutex::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type mutex::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   condvar::t
   (@class condvar::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type condvar::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class port::t (@class port::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   object-port::t
   (@class object-port::t (port::t) (port::t t::t) () () #f #f #f #f #f #f))
  (declare-type object-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   character-port::t
   (@class character-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   character-port::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   byte-port::t
   (@class byte-port::t
           (character-port::t)
           (character-port::t object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type byte-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   device-port::t
   (@class device-port::t
           (byte-port::t)
           (byte-port::t character-port::t object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type device-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   vector-port::t
   (@class vector-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type vector-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   string-port::t
   (@class string-port::t
           (character-port::t)
           (character-port::t object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type string-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   u8vector-port::t
   (@class u8vector-port::t
           (byte-port::t)
           (byte-port::t character-port::t object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type u8vector-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   raw-device-port::t
   (@class raw-device-port::t
           (port::t)
           (port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   raw-device-port::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   tcp-server-port::t
   (@class tcp-server-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   tcp-server-port::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   udp-port::t
   (@class udp-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type udp-port::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   directory-port::t
   (@class directory-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   directory-port::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   event-queue-port::t
   (@class event-queue-port::t
           (object-port::t)
           (object-port::t port::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   event-queue-port::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class table::t (@class table::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type table::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   readenv::t
   (@class readenv::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type readenv::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   writeenv::t
   (@class writeenv::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type writeenv::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   readtable::t
   (@class readtable::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type readtable::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   processor::t
   (@class processor::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type processor::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class vm::t (@class vm::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type vm::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   file-info::t
   (@class file-info::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type file-info::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   socket-info::t
   (@class socket-info::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type socket-info::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-class
   address-info::t
   (@class address-info::t () (t::t) () () #f #f #f #f #f #f))
  (declare-type address-info::t (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   atom?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   special?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type sequence? (@lambda 1 #f))
  (declare-type hvector? (@lambda 1 #f))
  (declare-type
   weak?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type object-port? (@lambda 1 #f))
  (declare-type character-port? (@lambda 1 #f))
  (declare-type device-port? (@lambda 1 #f))
  (declare-type vector-port? (@lambda 1 #f))
  (declare-type string-port? (@lambda 1 #f))
  (declare-type u8vector-port? (@lambda 1 #f))
  (declare-type raw-device-port? (@lambda 1 #f))
  (declare-type tcp-server-port? (@lambda 1 #f))
  (declare-type udp-port? (@lambda 1 #f))
  (declare-type directory-port? (@lambda 1 #f))
  (declare-type event-queue-port? (@lambda 1 #f))
  (declare-type readenv? (@lambda 1 #f))
  (declare-type writeenv? (@lambda 1 #f))
  (declare-type vm? (@lambda 1 #f)))
