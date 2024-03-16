prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type immediate::t (@class immediate () () () () #f #f #f #f #f #f))
  (declare-type
   char::t
   (@class char (immediate::t) (immediate::t) () () #f #f #f #f #f #f))
  (declare-type
   boolean::t
   (@class boolean (immediate::t) (immediate::t) () () #f #f #f #f #f #f))
  (declare-type
   void::t
   (@class void (immediate::t) (immediate::t) () () #f #f #f #f #f #f))
  (declare-type
   eof::t
   (@class eof (immediate::t) (immediate::t) () () #f #f #f #f #f #f))
  (declare-type
   special::t
   (@class special (immediate::t) (immediate::t) () () #f #f #f #f #f #f))
  (declare-type number::t (@class number () () () () #f #f #f #f #f #f))
  (declare-type
   real::t
   (@class real (number::t) (number::t) () () #f #f #f #f #f #f))
  (declare-type
   integer::t
   (@class integer (real::t) (real::t number::t) () () #f #f #f #f #f #f))
  (declare-type
   fixnum::t
   (@class fixnum
           (integer::t immediate::t)
           (integer::t real::t number::t immediate::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   bignum::t
   (@class bignum
           (integer::t)
           (integer::t real::t number::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   ratnum::t
   (@class ratnum (real::t) (real::t number::t) () () #f #f #f #f #f #f))
  (declare-type
   flonum::t
   (@class flonum (real::t) (real::t number::t) () () #f #f #f #f #f #f))
  (declare-type
   cpxnum::t
   (@class cpxnum (number::t) (number::t) () () #f #f #f #f #f #f))
  (declare-type symbolic::t (@class symbolic () () () () #f #f #f #f #f #f))
  (declare-type
   symbol::t
   (@class symbol (symbolic::t) (symbolic::t) () () #f #f #f #f #f #f))
  (declare-type
   keyword::t
   (@class keyword (symbolic::t) (symbolic::t) () () #f #f #f #f #f #f))
  (declare-type list::t (@class list () () () () #f #f #f #f #f #f))
  (declare-type
   pair::t
   (@class pair (list::t) (list::t) () () #f #f #f #f #f #f))
  (declare-type
   null::t
   (@class null
           (list::t immediate::t)
           (list::t immediate::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type sequence::t (@class sequence () () () () #f #f #f #f #f #f))
  (declare-type
   vector::t
   (@class vector (sequence::t) (sequence::t) () () #f #f #f #f #f #f))
  (declare-type
   string::t
   (@class string (sequence::t) (sequence::t) () () #f #f #f #f #f #f))
  (declare-type
   hvector::t
   (@class hvector (sequence::t) (sequence::t) () () #f #f #f #f #f #f))
  (declare-type
   u8vector::t
   (@class u8vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   s8vector::t
   (@class s8vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   u16vector::t
   (@class u16vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   s16vector::t
   (@class s16vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   u32vector::t
   (@class u32vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   s32vector::t
   (@class s32vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   u64vector::t
   (@class u64vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   s64vector::t
   (@class s64vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   f32vector::t
   (@class f32vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   f64vector::t
   (@class f64vector
           (hvector::t)
           (hvector::t sequence::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type values::t (@class values () () () () #f #f #f #f #f #f))
  (declare-type box::t (@class box () () () () #f #f #f #f #f #f))
  (declare-type frame::t (@class frame () () () () #f #f #f #f #f #f))
  (declare-type
   continuation::t
   (@class continuation () () () () #f #f #f #f #f #f))
  (declare-type promise::t (@class promise () () () () #f #f #f #f #f #f))
  (declare-type weak::t (@class weak () () () () #f #f #f #f #f #f))
  (declare-type foreign::t (@class foreign () () () () #f #f #f #f #f #f))
  (declare-type procedure::t (@class procedure () () () () #f #f #f #f #f #f))
  (declare-type time::t (@class time::t () () () () #f #f #f #f #f #f))
  (declare-type thread::t (@class thread::t () () () () #f #f #f #f #f #f))
  (declare-type
   thread-group::t
   (@class thread-group::t () () () () #f #f #f #f #f #f))
  (declare-type mutex::t (@class mutex::t () () () () #f #f #f #f #f #f))
  (declare-type condvar::t (@class condvar::t () () () () #f #f #f #f #f #f))
  (declare-type port::t (@class port::t () () () () #f #f #f #f #f #f))
  (declare-type
   object-port::t
   (@class object-port::t (port::t) (port::t) () () #f #f #f #f #f #f))
  (declare-type
   character-port::t
   (@class character-port::t
           (object-port::t)
           (object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   byte-port::t
   (@class byte-port::t
           (character-port::t)
           (character-port::t object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   device-port::t
   (@class device-port::t
           (byte-port::t)
           (byte-port::t character-port::t object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   vector-port::t
   (@class vector-port::t
           (object-port::t)
           (object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   string-port::t
   (@class string-port::t
           (character-port::t)
           (character-port::t object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   u8vector-port::t
   (@class u8vector-port::t
           (byte-port::t)
           (byte-port::t character-port::t object-port::t port::t)
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
   (@class raw-device-port::t (port::t) (port::t) () () #f #f #f #f #f #f))
  (declare-type
   tcp-server-port::t
   (@class tcp-server-port::t
           (object-port::t)
           (object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   udp-port::t
   (@class udp-port::t
           (object-port::t)
           (object-port::t port::t)
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
   (@class directory-port::t
           (object-port::t)
           (object-port::t port::t)
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
   (@class event-queue-port::t
           (object-port::t)
           (object-port::t port::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type table::t (@class table::t () () () () #f #f #f #f #f #f))
  (declare-type readenv::t (@class readenv::t () () () () #f #f #f #f #f #f))
  (declare-type writeenv::t (@class writeenv::t () () () () #f #f #f #f #f #f))
  (declare-type
   readtable::t
   (@class readtable::t () () () () #f #f #f #f #f #f))
  (declare-type
   processor::t
   (@class processor::t () () () () #f #f #f #f #f #f))
  (declare-type vm::t (@class vm::t () () () () #f #f #f #f #f #f))
  (declare-type
   file-info::t
   (@class file-info::t () () () () #f #f #f #f #f #f))
  (declare-type
   socket-info::t
   (@class socket-info::t () () () () #f #f #f #f #f #f))
  (declare-type
   address-info::t
   (@class address-info::t () () () () #f #f #f #f #f #f))
  (declare-type special? (@lambda 1 #f))
  (declare-type sequence? (@lambda 1 #f))
  (declare-type hvector? (@lambda 1 #f))
  (declare-type weak? (@lambda 1 #f))
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
