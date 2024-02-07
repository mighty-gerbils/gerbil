prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#optimizer-info::t
   (@class gxc#optimizer-info::t
           ()
           ()
           (type ssxi methods)
           (type ssxi methods)
           :init!
           #t
           #f
           ((:init! . gxc#optimizer-info:::init!))))
  (declare-type gxc#optimizer-info? (@predicate gxc#optimizer-info::t))
  (declare-type gxc#make-optimizer-info (@constrctuor gxc#optimizer-info::t))
  (declare-type
   gxc#optimizer-info-type
   (@accessor gxc#optimizer-info::t type #t))
  (declare-type
   gxc#optimizer-info-ssxi
   (@accessor gxc#optimizer-info::t ssxi #t))
  (declare-type
   gxc#optimizer-info-methods
   (@accessor gxc#optimizer-info::t methods #t))
  (declare-type
   gxc#optimizer-info-type-set!
   (@mutator gxc#optimizer-info::t type #t))
  (declare-type
   gxc#optimizer-info-ssxi-set!
   (@mutator gxc#optimizer-info::t ssxi #t))
  (declare-type
   gxc#optimizer-info-methods-set!
   (@mutator gxc#optimizer-info::t methods #t))
  (declare-type
   gxc#&optimizer-info-type
   (@accessor gxc#optimizer-info::t type #f))
  (declare-type
   gxc#&optimizer-info-ssxi
   (@accessor gxc#optimizer-info::t ssxi #f))
  (declare-type
   gxc#&optimizer-info-methods
   (@accessor gxc#optimizer-info::t methods #f))
  (declare-type
   gxc#&optimizer-info-type-set!
   (@mutator gxc#optimizer-info::t type #f))
  (declare-type
   gxc#&optimizer-info-ssxi-set!
   (@mutator gxc#optimizer-info::t ssxi #f))
  (declare-type
   gxc#&optimizer-info-methods-set!
   (@mutator gxc#optimizer-info::t methods #f))
  (declare-type gxc#optimizer-info:::init! (@lambda 1 #f))
  (declare-type gxc#!type::t (@class gxc#!type::t () () (id) (id) #f #t #f #f))
  (declare-type gxc#!type? (@predicate gxc#!type::t))
  (declare-type gxc#make-!type (@constrctuor gxc#!type::t))
  (declare-type gxc#!type-id (@accessor gxc#!type::t id #t))
  (declare-type gxc#!type-id-set! (@mutator gxc#!type::t id #t))
  (declare-type gxc#&!type-id (@accessor gxc#!type::t id #f))
  (declare-type gxc#&!type-id-set! (@mutator gxc#!type::t id #f))
  (declare-type
   gxc#!alias::t
   (@class gxc#!alias::t (gxc#!type::t) (gxc#!type::t) () (id) #f #t #f #f))
  (declare-type gxc#!alias? (@predicate gxc#!alias::t))
  (declare-type gxc#make-!alias (@constrctuor gxc#!alias::t))
  (declare-type gxc#!alias-id (@accessor gxc#!alias::t id #t))
  (declare-type gxc#!alias-id-set! (@mutator gxc#!alias::t id #t))
  (declare-type gxc#&!alias-id (@accessor gxc#!alias::t id #f))
  (declare-type gxc#&!alias-id-set! (@mutator gxc#!alias::t id #f))
  (declare-type
   gxc#!procedure::t
   (@class gxc#!procedure::t
           (gxc#!type::t)
           (gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!procedure? (@predicate gxc#!procedure::t))
  (declare-type gxc#make-!procedure (@constrctuor gxc#!procedure::t))
  (declare-type gxc#!procedure-id (@accessor gxc#!procedure::t id #t))
  (declare-type gxc#!procedure-id-set! (@mutator gxc#!procedure::t id #t))
  (declare-type gxc#&!procedure-id (@accessor gxc#!procedure::t id #f))
  (declare-type gxc#&!procedure-id-set! (@mutator gxc#!procedure::t id #f))
  (declare-type
   gxc#!struct-type::t
   (@class gxc#!struct-type::t
           (gxc#!type::t)
           (gxc#!type::t)
           (super fields xfields ctor plist methods)
           (id super fields xfields ctor plist methods)
           :init!
           #t
           #f
           ((:init! . gxc#!struct-type:::init!))))
  (declare-type gxc#!struct-type? (@predicate gxc#!struct-type::t))
  (declare-type gxc#make-!struct-type (@constrctuor gxc#!struct-type::t))
  (declare-type
   gxc#!struct-type-super
   (@accessor gxc#!struct-type::t super #t))
  (declare-type
   gxc#!struct-type-fields
   (@accessor gxc#!struct-type::t fields #t))
  (declare-type
   gxc#!struct-type-xfields
   (@accessor gxc#!struct-type::t xfields #t))
  (declare-type gxc#!struct-type-ctor (@accessor gxc#!struct-type::t ctor #t))
  (declare-type
   gxc#!struct-type-plist
   (@accessor gxc#!struct-type::t plist #t))
  (declare-type
   gxc#!struct-type-methods
   (@accessor gxc#!struct-type::t methods #t))
  (declare-type gxc#!struct-type-id (@accessor gxc#!struct-type::t id #t))
  (declare-type
   gxc#!struct-type-super-set!
   (@mutator gxc#!struct-type::t super #t))
  (declare-type
   gxc#!struct-type-fields-set!
   (@mutator gxc#!struct-type::t fields #t))
  (declare-type
   gxc#!struct-type-xfields-set!
   (@mutator gxc#!struct-type::t xfields #t))
  (declare-type
   gxc#!struct-type-ctor-set!
   (@mutator gxc#!struct-type::t ctor #t))
  (declare-type
   gxc#!struct-type-plist-set!
   (@mutator gxc#!struct-type::t plist #t))
  (declare-type
   gxc#!struct-type-methods-set!
   (@mutator gxc#!struct-type::t methods #t))
  (declare-type gxc#!struct-type-id-set! (@mutator gxc#!struct-type::t id #t))
  (declare-type
   gxc#&!struct-type-super
   (@accessor gxc#!struct-type::t super #f))
  (declare-type
   gxc#&!struct-type-fields
   (@accessor gxc#!struct-type::t fields #f))
  (declare-type
   gxc#&!struct-type-xfields
   (@accessor gxc#!struct-type::t xfields #f))
  (declare-type gxc#&!struct-type-ctor (@accessor gxc#!struct-type::t ctor #f))
  (declare-type
   gxc#&!struct-type-plist
   (@accessor gxc#!struct-type::t plist #f))
  (declare-type
   gxc#&!struct-type-methods
   (@accessor gxc#!struct-type::t methods #f))
  (declare-type gxc#&!struct-type-id (@accessor gxc#!struct-type::t id #f))
  (declare-type
   gxc#&!struct-type-super-set!
   (@mutator gxc#!struct-type::t super #f))
  (declare-type
   gxc#&!struct-type-fields-set!
   (@mutator gxc#!struct-type::t fields #f))
  (declare-type
   gxc#&!struct-type-xfields-set!
   (@mutator gxc#!struct-type::t xfields #f))
  (declare-type
   gxc#&!struct-type-ctor-set!
   (@mutator gxc#!struct-type::t ctor #f))
  (declare-type
   gxc#&!struct-type-plist-set!
   (@mutator gxc#!struct-type::t plist #f))
  (declare-type
   gxc#&!struct-type-methods-set!
   (@mutator gxc#!struct-type::t methods #f))
  (declare-type gxc#&!struct-type-id-set! (@mutator gxc#!struct-type::t id #f))
  (declare-type
   gxc#!class-type::t
   (@class gxc#!class-type::t
           (gxc#!type::t)
           (gxc#!type::t)
           (super mixin slots xslots ctor plist methods)
           (id super mixin slots xslots ctor plist methods)
           :init!
           #t
           #f
           ((:init! . gxc#!class-type:::init!))))
  (declare-type gxc#!class-type? (@predicate gxc#!class-type::t))
  (declare-type gxc#make-!class-type (@constrctuor gxc#!class-type::t))
  (declare-type gxc#!class-type-super (@accessor gxc#!class-type::t super #t))
  (declare-type gxc#!class-type-mixin (@accessor gxc#!class-type::t mixin #t))
  (declare-type gxc#!class-type-slots (@accessor gxc#!class-type::t slots #t))
  (declare-type
   gxc#!class-type-xslots
   (@accessor gxc#!class-type::t xslots #t))
  (declare-type gxc#!class-type-ctor (@accessor gxc#!class-type::t ctor #t))
  (declare-type gxc#!class-type-plist (@accessor gxc#!class-type::t plist #t))
  (declare-type
   gxc#!class-type-methods
   (@accessor gxc#!class-type::t methods #t))
  (declare-type gxc#!class-type-id (@accessor gxc#!class-type::t id #t))
  (declare-type
   gxc#!class-type-super-set!
   (@mutator gxc#!class-type::t super #t))
  (declare-type
   gxc#!class-type-mixin-set!
   (@mutator gxc#!class-type::t mixin #t))
  (declare-type
   gxc#!class-type-slots-set!
   (@mutator gxc#!class-type::t slots #t))
  (declare-type
   gxc#!class-type-xslots-set!
   (@mutator gxc#!class-type::t xslots #t))
  (declare-type
   gxc#!class-type-ctor-set!
   (@mutator gxc#!class-type::t ctor #t))
  (declare-type
   gxc#!class-type-plist-set!
   (@mutator gxc#!class-type::t plist #t))
  (declare-type
   gxc#!class-type-methods-set!
   (@mutator gxc#!class-type::t methods #t))
  (declare-type gxc#!class-type-id-set! (@mutator gxc#!class-type::t id #t))
  (declare-type gxc#&!class-type-super (@accessor gxc#!class-type::t super #f))
  (declare-type gxc#&!class-type-mixin (@accessor gxc#!class-type::t mixin #f))
  (declare-type gxc#&!class-type-slots (@accessor gxc#!class-type::t slots #f))
  (declare-type
   gxc#&!class-type-xslots
   (@accessor gxc#!class-type::t xslots #f))
  (declare-type gxc#&!class-type-ctor (@accessor gxc#!class-type::t ctor #f))
  (declare-type gxc#&!class-type-plist (@accessor gxc#!class-type::t plist #f))
  (declare-type
   gxc#&!class-type-methods
   (@accessor gxc#!class-type::t methods #f))
  (declare-type gxc#&!class-type-id (@accessor gxc#!class-type::t id #f))
  (declare-type
   gxc#&!class-type-super-set!
   (@mutator gxc#!class-type::t super #f))
  (declare-type
   gxc#&!class-type-mixin-set!
   (@mutator gxc#!class-type::t mixin #f))
  (declare-type
   gxc#&!class-type-slots-set!
   (@mutator gxc#!class-type::t slots #f))
  (declare-type
   gxc#&!class-type-xslots-set!
   (@mutator gxc#!class-type::t xslots #f))
  (declare-type
   gxc#&!class-type-ctor-set!
   (@mutator gxc#!class-type::t ctor #f))
  (declare-type
   gxc#&!class-type-plist-set!
   (@mutator gxc#!class-type::t plist #f))
  (declare-type
   gxc#&!class-type-methods-set!
   (@mutator gxc#!class-type::t methods #f))
  (declare-type gxc#&!class-type-id-set! (@mutator gxc#!class-type::t id #f))
  (declare-type
   gxc#!struct-pred::t
   (@class gxc#!struct-pred::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!struct-pred? (@predicate gxc#!struct-pred::t))
  (declare-type gxc#make-!struct-pred (@constrctuor gxc#!struct-pred::t))
  (declare-type gxc#!struct-pred-id (@accessor gxc#!struct-pred::t id #t))
  (declare-type gxc#!struct-pred-id-set! (@mutator gxc#!struct-pred::t id #t))
  (declare-type gxc#&!struct-pred-id (@accessor gxc#!struct-pred::t id #f))
  (declare-type gxc#&!struct-pred-id-set! (@mutator gxc#!struct-pred::t id #f))
  (declare-type
   gxc#!struct-cons::t
   (@class gxc#!struct-cons::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!struct-cons? (@predicate gxc#!struct-cons::t))
  (declare-type gxc#make-!struct-cons (@constrctuor gxc#!struct-cons::t))
  (declare-type gxc#!struct-cons-id (@accessor gxc#!struct-cons::t id #t))
  (declare-type gxc#!struct-cons-id-set! (@mutator gxc#!struct-cons::t id #t))
  (declare-type gxc#&!struct-cons-id (@accessor gxc#!struct-cons::t id #f))
  (declare-type gxc#&!struct-cons-id-set! (@mutator gxc#!struct-cons::t id #f))
  (declare-type
   gxc#!struct-getf::t
   (@class gxc#!struct-getf::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (off unchecked?)
           (id off unchecked?)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!struct-getf? (@predicate gxc#!struct-getf::t))
  (declare-type gxc#make-!struct-getf (@constrctuor gxc#!struct-getf::t))
  (declare-type gxc#!struct-getf-off (@accessor gxc#!struct-getf::t off #t))
  (declare-type
   gxc#!struct-getf-unchecked?
   (@accessor gxc#!struct-getf::t unchecked? #t))
  (declare-type gxc#!struct-getf-id (@accessor gxc#!struct-getf::t id #t))
  (declare-type
   gxc#!struct-getf-off-set!
   (@mutator gxc#!struct-getf::t off #t))
  (declare-type
   gxc#!struct-getf-unchecked?-set!
   (@mutator gxc#!struct-getf::t unchecked? #t))
  (declare-type gxc#!struct-getf-id-set! (@mutator gxc#!struct-getf::t id #t))
  (declare-type gxc#&!struct-getf-off (@accessor gxc#!struct-getf::t off #f))
  (declare-type
   gxc#&!struct-getf-unchecked?
   (@accessor gxc#!struct-getf::t unchecked? #f))
  (declare-type gxc#&!struct-getf-id (@accessor gxc#!struct-getf::t id #f))
  (declare-type
   gxc#&!struct-getf-off-set!
   (@mutator gxc#!struct-getf::t off #f))
  (declare-type
   gxc#&!struct-getf-unchecked?-set!
   (@mutator gxc#!struct-getf::t unchecked? #f))
  (declare-type gxc#&!struct-getf-id-set! (@mutator gxc#!struct-getf::t id #f))
  (declare-type
   gxc#!struct-setf::t
   (@class gxc#!struct-setf::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (off unchecked?)
           (id off unchecked?)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!struct-setf? (@predicate gxc#!struct-setf::t))
  (declare-type gxc#make-!struct-setf (@constrctuor gxc#!struct-setf::t))
  (declare-type gxc#!struct-setf-off (@accessor gxc#!struct-setf::t off #t))
  (declare-type
   gxc#!struct-setf-unchecked?
   (@accessor gxc#!struct-setf::t unchecked? #t))
  (declare-type gxc#!struct-setf-id (@accessor gxc#!struct-setf::t id #t))
  (declare-type
   gxc#!struct-setf-off-set!
   (@mutator gxc#!struct-setf::t off #t))
  (declare-type
   gxc#!struct-setf-unchecked?-set!
   (@mutator gxc#!struct-setf::t unchecked? #t))
  (declare-type gxc#!struct-setf-id-set! (@mutator gxc#!struct-setf::t id #t))
  (declare-type gxc#&!struct-setf-off (@accessor gxc#!struct-setf::t off #f))
  (declare-type
   gxc#&!struct-setf-unchecked?
   (@accessor gxc#!struct-setf::t unchecked? #f))
  (declare-type gxc#&!struct-setf-id (@accessor gxc#!struct-setf::t id #f))
  (declare-type
   gxc#&!struct-setf-off-set!
   (@mutator gxc#!struct-setf::t off #f))
  (declare-type
   gxc#&!struct-setf-unchecked?-set!
   (@mutator gxc#!struct-setf::t unchecked? #f))
  (declare-type gxc#&!struct-setf-id-set! (@mutator gxc#!struct-setf::t id #f))
  (declare-type
   gxc#!class-pred::t
   (@class gxc#!class-pred::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!class-pred? (@predicate gxc#!class-pred::t))
  (declare-type gxc#make-!class-pred (@constrctuor gxc#!class-pred::t))
  (declare-type gxc#!class-pred-id (@accessor gxc#!class-pred::t id #t))
  (declare-type gxc#!class-pred-id-set! (@mutator gxc#!class-pred::t id #t))
  (declare-type gxc#&!class-pred-id (@accessor gxc#!class-pred::t id #f))
  (declare-type gxc#&!class-pred-id-set! (@mutator gxc#!class-pred::t id #f))
  (declare-type
   gxc#!class-cons::t
   (@class gxc#!class-cons::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!class-cons? (@predicate gxc#!class-cons::t))
  (declare-type gxc#make-!class-cons (@constrctuor gxc#!class-cons::t))
  (declare-type gxc#!class-cons-id (@accessor gxc#!class-cons::t id #t))
  (declare-type gxc#!class-cons-id-set! (@mutator gxc#!class-cons::t id #t))
  (declare-type gxc#&!class-cons-id (@accessor gxc#!class-cons::t id #f))
  (declare-type gxc#&!class-cons-id-set! (@mutator gxc#!class-cons::t id #f))
  (declare-type
   gxc#!class-getf::t
   (@class gxc#!class-getf::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (slot unchecked?)
           (id slot unchecked?)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!class-getf? (@predicate gxc#!class-getf::t))
  (declare-type gxc#make-!class-getf (@constrctuor gxc#!class-getf::t))
  (declare-type gxc#!class-getf-slot (@accessor gxc#!class-getf::t slot #t))
  (declare-type
   gxc#!class-getf-unchecked?
   (@accessor gxc#!class-getf::t unchecked? #t))
  (declare-type gxc#!class-getf-id (@accessor gxc#!class-getf::t id #t))
  (declare-type
   gxc#!class-getf-slot-set!
   (@mutator gxc#!class-getf::t slot #t))
  (declare-type
   gxc#!class-getf-unchecked?-set!
   (@mutator gxc#!class-getf::t unchecked? #t))
  (declare-type gxc#!class-getf-id-set! (@mutator gxc#!class-getf::t id #t))
  (declare-type gxc#&!class-getf-slot (@accessor gxc#!class-getf::t slot #f))
  (declare-type
   gxc#&!class-getf-unchecked?
   (@accessor gxc#!class-getf::t unchecked? #f))
  (declare-type gxc#&!class-getf-id (@accessor gxc#!class-getf::t id #f))
  (declare-type
   gxc#&!class-getf-slot-set!
   (@mutator gxc#!class-getf::t slot #f))
  (declare-type
   gxc#&!class-getf-unchecked?-set!
   (@mutator gxc#!class-getf::t unchecked? #f))
  (declare-type gxc#&!class-getf-id-set! (@mutator gxc#!class-getf::t id #f))
  (declare-type
   gxc#!class-setf::t
   (@class gxc#!class-setf::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (slot unchecked?)
           (id slot unchecked?)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!class-setf? (@predicate gxc#!class-setf::t))
  (declare-type gxc#make-!class-setf (@constrctuor gxc#!class-setf::t))
  (declare-type gxc#!class-setf-slot (@accessor gxc#!class-setf::t slot #t))
  (declare-type
   gxc#!class-setf-unchecked?
   (@accessor gxc#!class-setf::t unchecked? #t))
  (declare-type gxc#!class-setf-id (@accessor gxc#!class-setf::t id #t))
  (declare-type
   gxc#!class-setf-slot-set!
   (@mutator gxc#!class-setf::t slot #t))
  (declare-type
   gxc#!class-setf-unchecked?-set!
   (@mutator gxc#!class-setf::t unchecked? #t))
  (declare-type gxc#!class-setf-id-set! (@mutator gxc#!class-setf::t id #t))
  (declare-type gxc#&!class-setf-slot (@accessor gxc#!class-setf::t slot #f))
  (declare-type
   gxc#&!class-setf-unchecked?
   (@accessor gxc#!class-setf::t unchecked? #f))
  (declare-type gxc#&!class-setf-id (@accessor gxc#!class-setf::t id #f))
  (declare-type
   gxc#&!class-setf-slot-set!
   (@mutator gxc#!class-setf::t slot #f))
  (declare-type
   gxc#&!class-setf-unchecked?-set!
   (@mutator gxc#!class-setf::t unchecked? #f))
  (declare-type gxc#&!class-setf-id-set! (@mutator gxc#!class-setf::t id #f))
  (declare-type
   gxc#!class::t
   (@class gxc#!class::t
           (gxc#!type::t)
           (gxc#!type::t)
           (super precedence-list
                  slots
                  fields
                  constructor
                  struct?
                  final?
                  methods)
           (id super
               precedence-list
               slots
               fields
               constructor
               struct?
               final?
               methods)
           :init!
           #t
           #f
           ((:init! . gxc#!class:::init!))))
  (declare-type gxc#!class? (@predicate gxc#!class::t))
  (declare-type gxc#make-!class (@constrctuor gxc#!class::t))
  (declare-type gxc#!class-super (@accessor gxc#!class::t super #t))
  (declare-type
   gxc#!class-precedence-list
   (@accessor gxc#!class::t precedence-list #t))
  (declare-type gxc#!class-slots (@accessor gxc#!class::t slots #t))
  (declare-type gxc#!class-fields (@accessor gxc#!class::t fields #t))
  (declare-type
   gxc#!class-constructor
   (@accessor gxc#!class::t constructor #t))
  (declare-type gxc#!class-struct? (@accessor gxc#!class::t struct? #t))
  (declare-type gxc#!class-final? (@accessor gxc#!class::t final? #t))
  (declare-type gxc#!class-methods (@accessor gxc#!class::t methods #t))
  (declare-type gxc#!class-id (@accessor gxc#!class::t id #t))
  (declare-type gxc#!class-super-set! (@mutator gxc#!class::t super #t))
  (declare-type
   gxc#!class-precedence-list-set!
   (@mutator gxc#!class::t precedence-list #t))
  (declare-type gxc#!class-slots-set! (@mutator gxc#!class::t slots #t))
  (declare-type gxc#!class-fields-set! (@mutator gxc#!class::t fields #t))
  (declare-type
   gxc#!class-constructor-set!
   (@mutator gxc#!class::t constructor #t))
  (declare-type gxc#!class-struct?-set! (@mutator gxc#!class::t struct? #t))
  (declare-type gxc#!class-final?-set! (@mutator gxc#!class::t final? #t))
  (declare-type gxc#!class-methods-set! (@mutator gxc#!class::t methods #t))
  (declare-type gxc#!class-id-set! (@mutator gxc#!class::t id #t))
  (declare-type gxc#&!class-super (@accessor gxc#!class::t super #f))
  (declare-type
   gxc#&!class-precedence-list
   (@accessor gxc#!class::t precedence-list #f))
  (declare-type gxc#&!class-slots (@accessor gxc#!class::t slots #f))
  (declare-type gxc#&!class-fields (@accessor gxc#!class::t fields #f))
  (declare-type
   gxc#&!class-constructor
   (@accessor gxc#!class::t constructor #f))
  (declare-type gxc#&!class-struct? (@accessor gxc#!class::t struct? #f))
  (declare-type gxc#&!class-final? (@accessor gxc#!class::t final? #f))
  (declare-type gxc#&!class-methods (@accessor gxc#!class::t methods #f))
  (declare-type gxc#&!class-id (@accessor gxc#!class::t id #f))
  (declare-type gxc#&!class-super-set! (@mutator gxc#!class::t super #f))
  (declare-type
   gxc#&!class-precedence-list-set!
   (@mutator gxc#!class::t precedence-list #f))
  (declare-type gxc#&!class-slots-set! (@mutator gxc#!class::t slots #f))
  (declare-type gxc#&!class-fields-set! (@mutator gxc#!class::t fields #f))
  (declare-type
   gxc#&!class-constructor-set!
   (@mutator gxc#!class::t constructor #f))
  (declare-type gxc#&!class-struct?-set! (@mutator gxc#!class::t struct? #f))
  (declare-type gxc#&!class-final?-set! (@mutator gxc#!class::t final? #f))
  (declare-type gxc#&!class-methods-set! (@mutator gxc#!class::t methods #f))
  (declare-type gxc#&!class-id-set! (@mutator gxc#!class::t id #f))
  (declare-type
   gxc#!predicate::t
   (@class gxc#!predicate::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           ((:init! . gxc#!predicate:::init!))))
  (declare-type gxc#!predicate? (@predicate gxc#!predicate::t))
  (declare-type gxc#make-!predicate (@constrctuor gxc#!predicate::t))
  (declare-type gxc#!predicate-id (@accessor gxc#!predicate::t id #t))
  (declare-type gxc#!predicate-id-set! (@mutator gxc#!predicate::t id #t))
  (declare-type gxc#&!predicate-id (@accessor gxc#!predicate::t id #f))
  (declare-type gxc#&!predicate-id-set! (@mutator gxc#!predicate::t id #f))
  (declare-type
   gxc#!constructor::t
   (@class gxc#!constructor::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           ()
           (id)
           #f
           #t
           #f
           ((:init! . gxc#!constructor:::init!))))
  (declare-type gxc#!constructor? (@predicate gxc#!constructor::t))
  (declare-type gxc#make-!constructor (@constrctuor gxc#!constructor::t))
  (declare-type gxc#!constructor-id (@accessor gxc#!constructor::t id #t))
  (declare-type gxc#!constructor-id-set! (@mutator gxc#!constructor::t id #t))
  (declare-type gxc#&!constructor-id (@accessor gxc#!constructor::t id #f))
  (declare-type gxc#&!constructor-id-set! (@mutator gxc#!constructor::t id #f))
  (declare-type
   gxc#!accessor::t
   (@class gxc#!accessor::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (slot checked?)
           (id slot checked?)
           #f
           #t
           #f
           ((:init! . gxc#!accessor:::init!))))
  (declare-type gxc#!accessor? (@predicate gxc#!accessor::t))
  (declare-type gxc#make-!accessor (@constrctuor gxc#!accessor::t))
  (declare-type gxc#!accessor-slot (@accessor gxc#!accessor::t slot #t))
  (declare-type
   gxc#!accessor-checked?
   (@accessor gxc#!accessor::t checked? #t))
  (declare-type gxc#!accessor-id (@accessor gxc#!accessor::t id #t))
  (declare-type gxc#!accessor-slot-set! (@mutator gxc#!accessor::t slot #t))
  (declare-type
   gxc#!accessor-checked?-set!
   (@mutator gxc#!accessor::t checked? #t))
  (declare-type gxc#!accessor-id-set! (@mutator gxc#!accessor::t id #t))
  (declare-type gxc#&!accessor-slot (@accessor gxc#!accessor::t slot #f))
  (declare-type
   gxc#&!accessor-checked?
   (@accessor gxc#!accessor::t checked? #f))
  (declare-type gxc#&!accessor-id (@accessor gxc#!accessor::t id #f))
  (declare-type gxc#&!accessor-slot-set! (@mutator gxc#!accessor::t slot #f))
  (declare-type
   gxc#&!accessor-checked?-set!
   (@mutator gxc#!accessor::t checked? #f))
  (declare-type gxc#&!accessor-id-set! (@mutator gxc#!accessor::t id #f))
  (declare-type
   gxc#!mutator::t
   (@class gxc#!mutator::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (slot checked?)
           (id slot checked?)
           #f
           #t
           #f
           ((:init! . gxc#!mutator:::init!))))
  (declare-type gxc#!mutator? (@predicate gxc#!mutator::t))
  (declare-type gxc#make-!mutator (@constrctuor gxc#!mutator::t))
  (declare-type gxc#!mutator-slot (@accessor gxc#!mutator::t slot #t))
  (declare-type gxc#!mutator-checked? (@accessor gxc#!mutator::t checked? #t))
  (declare-type gxc#!mutator-id (@accessor gxc#!mutator::t id #t))
  (declare-type gxc#!mutator-slot-set! (@mutator gxc#!mutator::t slot #t))
  (declare-type
   gxc#!mutator-checked?-set!
   (@mutator gxc#!mutator::t checked? #t))
  (declare-type gxc#!mutator-id-set! (@mutator gxc#!mutator::t id #t))
  (declare-type gxc#&!mutator-slot (@accessor gxc#!mutator::t slot #f))
  (declare-type gxc#&!mutator-checked? (@accessor gxc#!mutator::t checked? #f))
  (declare-type gxc#&!mutator-id (@accessor gxc#!mutator::t id #f))
  (declare-type gxc#&!mutator-slot-set! (@mutator gxc#!mutator::t slot #f))
  (declare-type
   gxc#&!mutator-checked?-set!
   (@mutator gxc#!mutator::t checked? #f))
  (declare-type gxc#&!mutator-id-set! (@mutator gxc#!mutator::t id #f))
  (declare-type
   gxc#!lambda::t
   (@class gxc#!lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (arity dispatch inline inline-typedecl)
           (id arity dispatch inline inline-typedecl)
           :init!
           #t
           #f
           ((:init! . gxc#!lambda:::init!))))
  (declare-type gxc#!lambda? (@predicate gxc#!lambda::t))
  (declare-type gxc#make-!lambda (@constrctuor gxc#!lambda::t))
  (declare-type gxc#!lambda-arity (@accessor gxc#!lambda::t arity #t))
  (declare-type gxc#!lambda-dispatch (@accessor gxc#!lambda::t dispatch #t))
  (declare-type gxc#!lambda-inline (@accessor gxc#!lambda::t inline #t))
  (declare-type
   gxc#!lambda-inline-typedecl
   (@accessor gxc#!lambda::t inline-typedecl #t))
  (declare-type gxc#!lambda-id (@accessor gxc#!lambda::t id #t))
  (declare-type gxc#!lambda-arity-set! (@mutator gxc#!lambda::t arity #t))
  (declare-type
   gxc#!lambda-dispatch-set!
   (@mutator gxc#!lambda::t dispatch #t))
  (declare-type gxc#!lambda-inline-set! (@mutator gxc#!lambda::t inline #t))
  (declare-type
   gxc#!lambda-inline-typedecl-set!
   (@mutator gxc#!lambda::t inline-typedecl #t))
  (declare-type gxc#!lambda-id-set! (@mutator gxc#!lambda::t id #t))
  (declare-type gxc#&!lambda-arity (@accessor gxc#!lambda::t arity #f))
  (declare-type gxc#&!lambda-dispatch (@accessor gxc#!lambda::t dispatch #f))
  (declare-type gxc#&!lambda-inline (@accessor gxc#!lambda::t inline #f))
  (declare-type
   gxc#&!lambda-inline-typedecl
   (@accessor gxc#!lambda::t inline-typedecl #f))
  (declare-type gxc#&!lambda-id (@accessor gxc#!lambda::t id #f))
  (declare-type gxc#&!lambda-arity-set! (@mutator gxc#!lambda::t arity #f))
  (declare-type
   gxc#&!lambda-dispatch-set!
   (@mutator gxc#!lambda::t dispatch #f))
  (declare-type gxc#&!lambda-inline-set! (@mutator gxc#!lambda::t inline #f))
  (declare-type
   gxc#&!lambda-inline-typedecl-set!
   (@mutator gxc#!lambda::t inline-typedecl #f))
  (declare-type gxc#&!lambda-id-set! (@mutator gxc#!lambda::t id #f))
  (declare-type
   gxc#!case-lambda::t
   (@class gxc#!case-lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (clauses)
           (id clauses)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!case-lambda? (@predicate gxc#!case-lambda::t))
  (declare-type gxc#make-!case-lambda (@constrctuor gxc#!case-lambda::t))
  (declare-type
   gxc#!case-lambda-clauses
   (@accessor gxc#!case-lambda::t clauses #t))
  (declare-type gxc#!case-lambda-id (@accessor gxc#!case-lambda::t id #t))
  (declare-type
   gxc#!case-lambda-clauses-set!
   (@mutator gxc#!case-lambda::t clauses #t))
  (declare-type gxc#!case-lambda-id-set! (@mutator gxc#!case-lambda::t id #t))
  (declare-type
   gxc#&!case-lambda-clauses
   (@accessor gxc#!case-lambda::t clauses #f))
  (declare-type gxc#&!case-lambda-id (@accessor gxc#!case-lambda::t id #f))
  (declare-type
   gxc#&!case-lambda-clauses-set!
   (@mutator gxc#!case-lambda::t clauses #f))
  (declare-type gxc#&!case-lambda-id-set! (@mutator gxc#!case-lambda::t id #f))
  (declare-type
   gxc#!kw-lambda::t
   (@class gxc#!kw-lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (table dispatch)
           (id table dispatch)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!kw-lambda? (@predicate gxc#!kw-lambda::t))
  (declare-type gxc#make-!kw-lambda (@constrctuor gxc#!kw-lambda::t))
  (declare-type gxc#!kw-lambda-table (@accessor gxc#!kw-lambda::t table #t))
  (declare-type
   gxc#!kw-lambda-dispatch
   (@accessor gxc#!kw-lambda::t dispatch #t))
  (declare-type gxc#!kw-lambda-id (@accessor gxc#!kw-lambda::t id #t))
  (declare-type
   gxc#!kw-lambda-table-set!
   (@mutator gxc#!kw-lambda::t table #t))
  (declare-type
   gxc#!kw-lambda-dispatch-set!
   (@mutator gxc#!kw-lambda::t dispatch #t))
  (declare-type gxc#!kw-lambda-id-set! (@mutator gxc#!kw-lambda::t id #t))
  (declare-type gxc#&!kw-lambda-table (@accessor gxc#!kw-lambda::t table #f))
  (declare-type
   gxc#&!kw-lambda-dispatch
   (@accessor gxc#!kw-lambda::t dispatch #f))
  (declare-type gxc#&!kw-lambda-id (@accessor gxc#!kw-lambda::t id #f))
  (declare-type
   gxc#&!kw-lambda-table-set!
   (@mutator gxc#!kw-lambda::t table #f))
  (declare-type
   gxc#&!kw-lambda-dispatch-set!
   (@mutator gxc#!kw-lambda::t dispatch #f))
  (declare-type gxc#&!kw-lambda-id-set! (@mutator gxc#!kw-lambda::t id #f))
  (declare-type
   gxc#!kw-lambda-primary::t
   (@class gxc#!kw-lambda-primary::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t)
           (keys main)
           (id keys main)
           #f
           #t
           #f
           #f))
  (declare-type gxc#!kw-lambda-primary? (@predicate gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#make-!kw-lambda-primary
   (@constrctuor gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#!kw-lambda-primary-keys
   (@accessor gxc#!kw-lambda-primary::t keys #t))
  (declare-type
   gxc#!kw-lambda-primary-main
   (@accessor gxc#!kw-lambda-primary::t main #t))
  (declare-type
   gxc#!kw-lambda-primary-id
   (@accessor gxc#!kw-lambda-primary::t id #t))
  (declare-type
   gxc#!kw-lambda-primary-keys-set!
   (@mutator gxc#!kw-lambda-primary::t keys #t))
  (declare-type
   gxc#!kw-lambda-primary-main-set!
   (@mutator gxc#!kw-lambda-primary::t main #t))
  (declare-type
   gxc#!kw-lambda-primary-id-set!
   (@mutator gxc#!kw-lambda-primary::t id #t))
  (declare-type
   gxc#&!kw-lambda-primary-keys
   (@accessor gxc#!kw-lambda-primary::t keys #f))
  (declare-type
   gxc#&!kw-lambda-primary-main
   (@accessor gxc#!kw-lambda-primary::t main #f))
  (declare-type
   gxc#&!kw-lambda-primary-id
   (@accessor gxc#!kw-lambda-primary::t id #f))
  (declare-type
   gxc#&!kw-lambda-primary-keys-set!
   (@mutator gxc#!kw-lambda-primary::t keys #f))
  (declare-type
   gxc#&!kw-lambda-primary-main-set!
   (@mutator gxc#!kw-lambda-primary::t main #f))
  (declare-type
   gxc#&!kw-lambda-primary-id-set!
   (@mutator gxc#!kw-lambda-primary::t id #f))
  (declare-type
   gxc#!primitive::t
   (@class gxc#!primitive::t () () () () #f #f #f #f))
  (declare-type gxc#!primitive? (@predicate gxc#!primitive::t))
  (declare-type gxc#make-!primitive (@constrctuor gxc#!primitive::t))
  (declare-type
   gxc#!primitive-lambda::t
   (@class gxc#!primitive-lambda::t
           (gxc#!primitive::t gxc#!lambda::t)
           (gxc#!primitive::t gxc#!lambda::t gxc#!procedure::t gxc#!type::t)
           ()
           (id arity dispatch inline inline-typedecl)
           :init!
           #f
           #f
           ((:init! . gxc#!primitive-lambda:::init!))))
  (declare-type gxc#!primitive-lambda? (@predicate gxc#!primitive-lambda::t))
  (declare-type
   gxc#make-!primitive-lambda
   (@constrctuor gxc#!primitive-lambda::t))
  (declare-type
   gxc#!primitive-lambda-arity
   (@accessor gxc#!primitive-lambda::t arity #t))
  (declare-type
   gxc#!primitive-lambda-dispatch
   (@accessor gxc#!primitive-lambda::t dispatch #t))
  (declare-type
   gxc#!primitive-lambda-inline
   (@accessor gxc#!primitive-lambda::t inline #t))
  (declare-type
   gxc#!primitive-lambda-inline-typedecl
   (@accessor gxc#!primitive-lambda::t inline-typedecl #t))
  (declare-type
   gxc#!primitive-lambda-id
   (@accessor gxc#!primitive-lambda::t id #t))
  (declare-type
   gxc#!primitive-lambda-arity-set!
   (@mutator gxc#!primitive-lambda::t arity #t))
  (declare-type
   gxc#!primitive-lambda-dispatch-set!
   (@mutator gxc#!primitive-lambda::t dispatch #t))
  (declare-type
   gxc#!primitive-lambda-inline-set!
   (@mutator gxc#!primitive-lambda::t inline #t))
  (declare-type
   gxc#!primitive-lambda-inline-typedecl-set!
   (@mutator gxc#!primitive-lambda::t inline-typedecl #t))
  (declare-type
   gxc#!primitive-lambda-id-set!
   (@mutator gxc#!primitive-lambda::t id #t))
  (declare-type
   gxc#&!primitive-lambda-arity
   (@accessor gxc#!primitive-lambda::t arity #f))
  (declare-type
   gxc#&!primitive-lambda-dispatch
   (@accessor gxc#!primitive-lambda::t dispatch #f))
  (declare-type
   gxc#&!primitive-lambda-inline
   (@accessor gxc#!primitive-lambda::t inline #f))
  (declare-type
   gxc#&!primitive-lambda-inline-typedecl
   (@accessor gxc#!primitive-lambda::t inline-typedecl #f))
  (declare-type
   gxc#&!primitive-lambda-id
   (@accessor gxc#!primitive-lambda::t id #f))
  (declare-type
   gxc#&!primitive-lambda-arity-set!
   (@mutator gxc#!primitive-lambda::t arity #f))
  (declare-type
   gxc#&!primitive-lambda-dispatch-set!
   (@mutator gxc#!primitive-lambda::t dispatch #f))
  (declare-type
   gxc#&!primitive-lambda-inline-set!
   (@mutator gxc#!primitive-lambda::t inline #f))
  (declare-type
   gxc#&!primitive-lambda-inline-typedecl-set!
   (@mutator gxc#!primitive-lambda::t inline-typedecl #f))
  (declare-type
   gxc#&!primitive-lambda-id-set!
   (@mutator gxc#!primitive-lambda::t id #f))
  (declare-type
   gxc#!primitive-case-lambda::t
   (@class gxc#!primitive-case-lambda::t
           (gxc#!primitive::t gxc#!case-lambda::t)
           (gxc#!primitive::t
            gxc#!case-lambda::t
            gxc#!procedure::t
            gxc#!type::t)
           ()
           (id clauses)
           :init!
           #f
           #f
           ((:init! . gxc#!primitive-case-lambda:::init!))))
  (declare-type
   gxc#!primitive-case-lambda?
   (@predicate gxc#!primitive-case-lambda::t))
  (declare-type
   gxc#make-!primitive-case-lambda
   (@constrctuor gxc#!primitive-case-lambda::t))
  (declare-type
   gxc#!primitive-case-lambda-clauses
   (@accessor gxc#!primitive-case-lambda::t clauses #t))
  (declare-type
   gxc#!primitive-case-lambda-id
   (@accessor gxc#!primitive-case-lambda::t id #t))
  (declare-type
   gxc#!primitive-case-lambda-clauses-set!
   (@mutator gxc#!primitive-case-lambda::t clauses #t))
  (declare-type
   gxc#!primitive-case-lambda-id-set!
   (@mutator gxc#!primitive-case-lambda::t id #t))
  (declare-type
   gxc#&!primitive-case-lambda-clauses
   (@accessor gxc#!primitive-case-lambda::t clauses #f))
  (declare-type
   gxc#&!primitive-case-lambda-id
   (@accessor gxc#!primitive-case-lambda::t id #f))
  (declare-type
   gxc#&!primitive-case-lambda-clauses-set!
   (@mutator gxc#!primitive-case-lambda::t clauses #f))
  (declare-type
   gxc#&!primitive-case-lambda-id-set!
   (@mutator gxc#!primitive-case-lambda::t id #f))
  (declare-type gxc#!class:::init!__0 (@lambda 7 #f))
  (declare-type gxc#!class:::init!__1 (@lambda 10 #f))
  (declare-type
   gxc#!class:::init!
   (@case-lambda (7 gxc#!class:::init!__0) (10 gxc#!class:::init!__1)))
  (declare-type gxc#!class:::init!::specialize (@lambda 1 #f))
  (declare-type gxc#compute-class-fields (@lambda 4 #f))
  (declare-type gxc#!class-slot->field-offset (@lambda 2 #f))
  (declare-type gxc#!class-slot-find-struct (@lambda 2 #f))
  (declare-type gxc#!class-struct-slot? (@lambda 2 #f))
  (declare-type gxc#!predicate:::init! (@lambda 2 gxc#!type-id-set!))
  (declare-type gxc#!predicate:::init!::specialize (@lambda 1 #f))
  (declare-type gxc#!constructor:::init! (@lambda 2 gxc#!type-id-set!))
  (declare-type gxc#!constructor:::init!::specialize (@lambda 1 #f))
  (declare-type gxc#!accessor:::init! (@lambda 4 #f))
  (declare-type gxc#!accessor:::init!::specialize (@lambda 1 #f))
  (declare-type gxc#!mutator:::init! (@lambda 4 #f))
  (declare-type gxc#!mutator:::init!::specialize (@lambda 1 #f))
  (declare-type gxc#!struct-type:::init! (@lambda 7 #f))
  (declare-type gxc#!class-type:::init! (@lambda 8 #f))
  (declare-type gxc#!lambda:::init!__% (@lambda 6 struct-instance-init!))
  (declare-type gxc#!lambda:::init!__0 (@lambda 4 #f))
  (declare-type gxc#!lambda:::init!__1 (@lambda 5 #f))
  (declare-type
   gxc#!lambda:::init!
   (@case-lambda
    (4 gxc#!lambda:::init!__0)
    (5 gxc#!lambda:::init!__1)
    (6 gxc#!lambda:::init!__%)))
  (declare-type
   gxc#!primitive-lambda:::init!
   (@case-lambda
    (4 gxc#!lambda:::init!__0)
    (5 gxc#!lambda:::init!__1)
    (6 gxc#!lambda:::init!__%)))
  (declare-type
   gxc#!primitive-case-lambda:::init!
   (@kw-lambda-dispatch () struct-instance-init!))
  (declare-type gxc#!struct-type-vtab (@lambda 1 #f))
  (declare-type gxc#!class-type-vtab (@lambda 1 #f))
  (declare-type gxc#!class-method-table (@lambda 1 #f))
  (declare-type gxc#!type-vtab (@lambda 1 #f))
  (declare-type gxc#!struct-type-lookup-method (@lambda 2 #f))
  (declare-type gxc#!class-type-lookup-method (@lambda 2 #f))
  (declare-type gxc#!class-lookup-method (@lambda 2 #f))
  (declare-type gxc#!type-lookup-method (@lambda 2 #f))
  (declare-type gxc#!class-type-complete? (@lambda 1 #f))
  (declare-type gxc#optimizer-declare-type!__% (@lambda 3 #f))
  (declare-type gxc#optimizer-declare-type!__0 (@lambda 2 #f))
  (declare-type
   gxc#optimizer-declare-type!
   (@case-lambda
    (2 gxc#optimizer-declare-type!__0)
    (3 gxc#optimizer-declare-type!__%)))
  (declare-type gxc#optimizer-clear-type!__% (@lambda 2 #f))
  (declare-type gxc#optimizer-clear-type!__0 (@lambda 1 #f))
  (declare-type
   gxc#optimizer-clear-type!
   (@case-lambda
    (1 gxc#optimizer-clear-type!__0)
    (2 gxc#optimizer-clear-type!__%)))
  (declare-type gxc#optimizer-declare-method!__% (@lambda 4 #f))
  (declare-type gxc#optimizer-declare-method!__0 (@lambda 3 #f))
  (declare-type
   gxc#optimizer-declare-method!
   (@case-lambda
    (3 gxc#optimizer-declare-method!__0)
    (4 gxc#optimizer-declare-method!__%)))
  (declare-type gxc#optimizer-lookup-type (@lambda 1 #f))
  (declare-type gxc#optimizer-resolve-type (@lambda 1 #f))
  (declare-type gxc#optimizer-resolve-class (@lambda 2 #f))
  (declare-type gxc#optimizer-lookup-method (@lambda 2 #f))
  (declare-type gxc#optimizer-top-level-method! (@lambda 1 #f))
  (declare-type gxc#optimizer-top-level-method? (@lambda 1 #f))
  (declare-type gxc#identifier-symbol (@lambda 1 #f)))
