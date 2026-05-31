;;; -*- Gerbil -*-
;;; © vyzo
;;; deserialization macro
(import	:std/interface
	:std/error
	:std/hash-table
	:std/io/interface
        :std/io/bio/api
	./interface
        ./util)
(export #t)

(defstruct BasicAnchor
  ((this        :- Anchor)
   (index       :- :fixnum)
   (object      :- :t)
   (has-object? :- :boolean)
   (resolved?   :- :boolean)
   (dict        :- HashTable))
  transparent: #f)

(defstruct (TopAnchor BasicAnchor) ()
  final: #t)

(defstruct (TempAnchor BasicAnchor) ()
  final: #t)

(implement Anchor
  (BasicAnchor
   (cons!
    (lambda (self klass hint)
      (when self.has-object?
	(runtime-contract-violation! Anchor::cons!
				     (not self.has-object?)
				     self.object))
      (object-builder-for-class klass self.this hint)))
   (set!
       (lambda (self obj)
	 (when self.has-object?
	   (runtime-contract-violation! Anchor::set!
					(not self.has-object?)
					self.object))
	 (set! self.object obj)
	 (set! self.has-object? #t)
	 (when self.dict
	   (self.dict.set! self.index self))
	 self.this))
   (temporary
    (lambda (self)
      (temp-anchor self)))
   (resolve!
    (lambda (self ctx)
      (unless self.has-object?
	(runtime-contract-violation! Anchor::resolve!
				     self.has-object?
				     #f))
      (cond
       (self.resolved?
	self.object)
       (else
	(set! self.resolved? #t)
	(__object-resolve! self.object ctx)
	self.object)))))
  (TopAnchor
   (resolve!
    (lambda (self ctx)
      (unless self.has-object?
	(runtime-contract-violation! Anchor::resolve!
				     self.has-object?
				     #f))
      (cond
       (self.resolved?
	self.object)
       (else
	(set! self.object (resolve! self.object ctx))
	(validate! self.object [])
	(set! self.resolved? #t)
	self.object)))))
  (TempAnchor
   (set!
       (lambda (self obj)
	 (when self.has-object?
	   (runtime-contract-violation! Anchor::cons!
					(not self.has-object?)
					self.object))
	 (set! self.has-object? #t)
	 (set! self.object obj)
	 obj))
   (resolve!
    (lambda (self ctx)
      (raise-unsupported-method TempAnchor::resolve! Anchor::resolve! "cannot resolve temporary anchor")))))

(defstruct Deserializer ()
  transparent: #f)

(defstruct (DAGDeserializer Deserializer) ()
  transparent: #f
  final: #t)

(implement ReadTraits
  (Deserializer
   (anchor!
    (lambda (self index ctx)
      (if (ctx.dict.ref index #f)
	(runtime-contract-violation! ReaderTraits::anchor!
				     (not (ctx.dict.ref index #f))
				     index)
	(let (anchor (new-anchor index #f))
	  (ctx.dict.set! index anchor)
	  anchor))))
   (reference
    (lambda (self index ctx)
      (cond
       ((ctx.dict.ref index #f) => (lambda (o) (:- o Anchor)))
       (else
	(runtime-contract-violation! ReaderTraits::reference
				     (ctx.dict.ref index #f)
				     index)))))
   (resolve-class!
    (lambda (self name ctx)
      (let (name
	    (cond
	     ((string? name) name)
	     ((symbol? name) (symbol->string name))
	     (else
	      (runtime-contract-violation! ReaderTraits::resolve-class!
					   (? string? symbol?)
					   name))))
	(cond
	 ((ctx.classes.ref name #f) => (lambda (o) (:- o class)))
	 ((ctx.allow-class? name)
	  (let (klass (load-class name))
	    (ctx.classes.set! name klass)
	    klass))
	 (else
	  (runtime-contract-violation! ReaderTraits::resolve-class!
				       ctx.allow-class?
				       name)))))))
  (DAGDeserializer
   (anchor!
    (lambda (self index ctx)
      (if (ctx.dict.ref index #f)
	(runtime-contract-violation! ReaderTraits::anchor!
				     (not (ctx.dict.ref index #f))
				     index)
	(new-anchor index ctx.dict))))))

(defstruct BasicBuilder (object (anchor :- Anchor))
  constructor: :init!
  transparent: #f)

(defsyntax-case defmeta-constructors ()
  ((_ (klass builder (slot ...)) ...)
   (with-syntax (((new ...)
		  (map (lambda (klass) (stx-identifier klass 'new))
		       #'(klass ...))))
     #'(begin
	 (defstruct (builder BasicBuilder) (slot ...) final: #t) ...
	 (implement MetaConstructor
	   (klass (new (lambda (nil iklass anchor hint)
			 (ObjectBuilder

			  (builder iklass anchor hint)))))
	   ...)))))

;; this should be symmetric to what is serializable in ./serialize
(defmeta-constructors
  ;; the standard object hierarchy
  (class              ClassBuilder ())
  (:object            BaseObjectBuilder ((slots :- HashTable)))
  (interface-instance InterfaceInstanceBuilder ())

  ;; the inner hash table zoo
  (HashTable      HashTableBuilder ())
  (hash-table     GenericHashTableBuilder ())
  (gc-hash-table  GCHashTableBuilder ())
  (eq-hash-table  EqHashTableBuilder ())
  (eqv-hash-table EqvHashTableBuilder ())
  (symbol-hash-table SymbolHashTableBuilder ())
  (string-hash-table StringHashTableBuilder ())
  (immediate-hash-table ImmediateHashTableBuilder ())
  ;; TODO builtin composite objects for binary deserialization
  )

(defmethod {:init! ClassBuilder}
  (lambda (self klass anchor hint)
    (set! self.anchor anchor)))

(defmethod {:init! BaseObjectBuilder}
  (lambda (self klass anchor hint)
    (set! self.object (new-instance klass))
    (set! self.anchor anchor)
    ;; we need to convert the symbol slot table to a general table
    ;; that can handle symbols, keywords, or strings (you don't want
    ;; to intern slot names coming from the network in general)
    ;; we store the table to the class type property table
    ;; so that we don't have to do it all the time
    (cond
     ((agetq serde-slots: (class-type-properties klass))
      => (lambda (tab)
	   (set! self.slots tab)))
     (else
      (let* ((tab (make-hash-table))
	       (slot-vector (class-type-slot-vector klass))
	       (slot-vector-len (##vector-length slot-vector)))
	  (let loop ((i 1 :- :fixnum))

	    (if (fx< i slot-vector-len)
	      (let* ((slot (##vector-ref slot-vector i))
		     (slot-str (symbol->string slot))
		     (slot-key (string->keyword slot-str)))
		(hash-put! tab slot i)
		(hash-put! tab slot-str i)
		(hash-put! tab slot-key i)
		(loop (fx+ i 1)))
	      (begin
		(class-type-properties-put! klass serde-slots: tab)
		(set! self.slots tab)))))))))

(defmethod {:init! InterfaceInstanceBuilder}
  (lambda (self klass anchor hint)
    (set! self.object (new-instance klass))
    (set! self.anchor anchor)))

(defmethod {:init! HashTableBuilder}
  (lambda (self klass anchor hint)
    (set! self.anchor anchor)))

(defmethod {:init! GenericHashTableBuilder}
  (lambda (self klass anchor hint)
    (let (size (if (fixnum? hint) hint #f))
      (set! self.object (make-hash-table size: size))
      (set! self.anchor anchor))))

(defmethod {:init! EqHashTableBuilder}
  (lambda (self klass anchor hint)
    (let (size (if (fixnum? hint) hint #f))
      (set! self.object (make-hash-table-eq size: size))
      (set! self.anchor anchor))))

(defmethod {:init! EqvHashTableBuilder}
  (lambda (self klass anchor hint)
    (let (size (if (fixnum? hint) hint #f))
      (set! self.object (make-hash-table-eqv size: size))
      (set! self.anchor anchor))))

(defmethod {:init! GCHashTableBuilder}
  EqHashTableBuilder:::init!)

(defmethod {:init! SymbolHashTableBuilder}
  EqHashTableBuilder:::init!)

(defmethod {:init! StringHashTableBuilder}
  GenericHashTableBuilder:::init!)

(defmethod {:init! ImmediateHashTableBuilder}
  EqvHashTableBuilder:::init!)

(defmethod {finish! BasicBuilder}
  (lambda (self)
    (if self.object
      (self.anchor.set! self.object)
      (runtime-contract-violation! ObjectBuilder::finish! self.object #f)))
  interface: ObjectBuilder)

(implement ObjectBuilder
  (ClassBuilder
   (push!
    (lambda (self val hint ctx)
      (if (or (eq? hint 'id)
	      (eq? hint 'id:)
	      (equal? hint "id"))
	(set! self.object (ctx.methods.resolve-class! val ctx))
	(runtime-contract-violation! ClassBuilder::push! (hint: id) hint)))))
  (BaseObjectBuilder
   (push!
    (lambda (self val hint ctx)
      (cond
       ((self.slots.ref hint #f)
	=> (lambda (offset)
	     (unchecked-field-set! self.object offset val)))
       (else
	(runtime-contract-violation! BaseObjectBuilder::push! (hint: slot) hint))))))
  (InterfaceInstanceBuilder
   (push!
    (lambda (self val hint ctx)
      (if (or (eq? hint 'object)
	      (eq? hint 'object:)
	      (equal? hint "object"))
	(set! (interface-instance-object self.object) val)
	(runtime-contract-violation! ClassBuilder::push! (hint: object) hint))))
   (finish!
    (lambda (self)
      (let (instance-object (&interface-instance-object self.object))
	(if instance-object
	  (let* ((props      (class-type-properties (object-class self.object)))
		 (descriptor (agetq interface-descriptor: props)))
	    (unless descriptor
	      (BUG "no interface descriptor" self.object props))
	    (let* ((prototype (class-interface-prototype  (object-class instance-object) descriptor (object-class self.object)))
		   (prototype (##structure-copy prototype)))
	      (set! (&interface-instance-object prototype) instance-object)
	      (self.anchor.set! prototype)))
	  (runtime-contract-violation! InterfaceInstanceBuilder::push! (hint: object) #f))))))
  (HashTableBuilder
   (push!
    (lambda (self val hint ctx)
      (if (or (eq? hint 'object)
	      (eq? hint 'object:)
	      (equal? hint "object"))
	(set! self.object (: val HashTable))
	(runtime-contract-violation! ClassBuilder::push! (hint: object) hint)))))
  (GenericHashTableBuilder
   (push!
    (lambda (self val hint ctx)
      (using (ht self.object :- HashTable)
	(ht.set! hint val)))))
  (EqHashTableBuilder
   (push!
    HashTableBuilder::std/serde/interface::ObjectBuilder::push!))
  (EqvHashTableBuilder
   (push!
    HashTableBuilder::std/serde/interface::ObjectBuilder::push!))
  (GCHashTableBuilder
   (push!
    HashTableBuilder::std/serde/interface::ObjectBuilder::push!)))

(defrule (do-vector-resolve vec ctx start
			    v-len v-ref v-set!)
  (let (len (v-len vec))
    (let loop ((i start :- :fixnum))
      (when (fx< i len)
	(v-set! vec i (resolve! (v-ref vec i) ctx))
	(loop (fx+ i 1))))))

(defrule (do-vector-validate vec path start
			     v-len v-ref)
  (let (len (v-len vec))
    (let loop ((i start :- :fixnum))
      (when (fx< i len)
	(validate! (v-ref vec i) path)
	(loop (fx+ i 1))))))

(implement ObjectDeserializer
  (class
   (resolve!  void)
   (validate! void))
  (interface-instance
   (resolve!
    (lambda (self ctx)
      (set! self.object (resolve! self.object ctx))
      self))
   (validate!
    (lambda (self path)
      (validate! self.object path))))
  (HashTable
   (resolve!
    (lambda (self ctx)
      (self.for-each
       (lambda (k v)
	 (self.set! (resolve! k ctx) (resolve! v ctx))))))
   (validate!
    (lambda (self path)
      (self.for-each
       (lambda (k v)
	 (validate! k path)
	 (validate! v path))))))
  ;; builtins
  (:pair
   (resolve!
    (lambda (self ctx)
      (set! (car self) (resolve! (car self) ctx))
      (set! (cdr self) (resolve! (cdr self) ctx))))
   (validate!
    (lambda (self path)
      (validate! (car self) path)
      (validate! (cdr self) path))))
  (:vector
   (resolve!
    (lambda (self ctx)
      (do-vector-resolve self ctx 0
			 ##vector-length
			 ##vector-ref
			 ##vector-set!)))
   (validate!
    (lambda (self path)
      (do-vector-validate self path 0
			  ##vector-length
			  ##vector-ref))))
  (:values
   (resolve!
    (lambda (self ctx)
      (do-vector-resolve self ctx 0
			 ##values-length
			 ##values-ref
			 ##values-set!)))
   (validate!
    (lambda (self path)
      (do-vector-validate self path 0
			  ##values-length
			  ##values-ref))))
  (:box
   (resolve!
    (lambda (self ctx)
      (set! (box self) (resolve! (unbox self) ctx))))
   (validate!
    (lambda (self path)
      (validate! (unbox self) path))))
  (:structure
   (resolve!
    (lambda (self ctx)
      (do-vector-resolve self ctx 1
			 ##structure-length
			 unchecked-field-ref
			 unchecked-field-set!)))
   (validate!
    (lambda (self path)
      (do-vector-validate self path 1
			  ##structure-length
			  unchecked-field-ref))))

  ;; effective hash table zoo
  )

;; atomic builtins
(defsyntax-case defatomic-deserializers ()
  ((_ klass ...)
   (with-syntax ((resolve!  (syntax-local-introduce 'resolve!))
		 (validate! (syntax-local-introduce 'validate!)))
     #'(implement ObjectDeserializer
	 (klass
	  (resolve!  void)
	  (validate! void))
	 ...))))

(defatomic-deserializers
  :atom
  :number
  :symbolic
  :string
  :hvector
  :procedure)

;; anchor instances
(def (top-anchor)
  => Anchor
  (using (top (TopAnchor #f -1 #!void #f #f #f) : TopAnchor)
    (let (inst (Anchor top))
      (set! top.this inst)
      inst)))

(def (new-anchor (index : :fixnum) (dict :- HashTable))
  => Anchor
  (using (ext (BasicAnchor #f index #!void #f #f dict) : BasicAnchor)
    (let (inst (Anchor ext))
      (set! ext.this inst)
      inst)))

(def (temp-anchor (from : BasicAnchor))
  => Anchor
  (using (temp (TempAnchor #f from.index #!void #f #f #f) : TempAnchor)
    (let (inst (Anchor temp))
      (set! temp.this inst)
      inst)))

;; object constructors
(def (object-builder-for-class (klass : class)
			       (anchor : Anchor)
			       (hint : :t))
  => ObjectBuilder
  (using (metakons (class-interface-prototype klass
					      ;; TODO fix the compiler fart requiring this cast
					      (:- MetaConstructor::interface interface-descriptor)
					      MetaConstructor::t)
		   : MetaConstructor)
    (metakons.new klass anchor hint)))

;; object deserializers
(defcall-interface-method ObjectDeserializer resolve!
  (__object-resolve! obj ctx)
  :- :void)

(defcall-interface-method ObjectDeserializer validate!
  (__object-validate! obj path)
  :- :void)

;; deserializer implementation should call these
(def (resolve! obj (ctx : ReadContext))
  (if (Anchor? obj)
    (using (anchor obj : Anchor)
      (anchor.resolve! ctx))
    (begin
      (__object-resolve! obj ctx)
      obj)))

(def (validate! obj (path : :list))
  (unless (memq obj path)
    (__object-validate! obj (cons obj path))))

(def (resolve-object-slots! (obj : :object) (ctx : ReadContext))
  (let* ((klass (object-class obj))
	 (slots (class-type-printable-slots klass)))
    (let loop ((rest slots))
      (match rest
        ([print-spec . rest]
         (using ((spec   print-spec :- :pair)
                 (slot   (car spec) :- :symbol)
                 (offset (cdr spec) :- :fixnum))
	   (unchecked-field-set! obj offset (resolve! (unchecked-field-ref obj offset) ctx))
	   (loop rest)))
        (else #!void)))))

(def (validate-object-slots! (obj : :object) (path : :list))
  (do-vector-validate obj path 1
		      ##structure-length
		      unchecked-field-ref))

(defmethod {resolve! :object}
  (lambda (self ctx)
    (resolve-object-slots! self ctx))
  interface: ObjectDeserializer)

(def __deserializer
  (ReadTraits (Deserializer)))

(def __dag-deserializer
  (ReadTraits (DAGDeserializer)))

(defmethod {:init! ReadContext}
  (lambda (self allow-class:     (allow-class     : :procedure)
	   allow-procedure: (allow-procedure : :procedure)
	   intern-symbol:   (intern-symbol   : :procedure)
	   intern-keyword:  (intern-keyword  : :procedure)
	   dag:             (dag?            : :boolean := #f))
    (set! self.dict (make-hash-table-eqv))
    (set! self.methods (if dag? __dag-deserializer __deserializer))
    (set! self.classes (make-hash-table))
    (set! self.allow-class? allow-class)
    (set! self.procedures (make-hash-table))
    (set! self.allow-procedure? allow-procedure)
    (set! self.intern-symbol intern-symbol)
    (set! self.intern-keyword intern-keyword)))
