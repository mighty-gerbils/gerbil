;	Functional XML parsing framework: SAX/DOM and SXML parsers
;	      with support for XML Namespaces and validation
;
; This is a package of low-to-high level lexing and parsing procedures
; that can be combined to yield a SAX, a DOM, a validating parsers, or
; a parser intended for a particular document type. The procedures in
; the package can be used separately to tokenize or parse various
; pieces of XML documents. The package supports XML Namespaces,
; internal and external parsed entities, user-controlled handling of
; whitespace, and validation. This module therefore is intended to be
; a framework, a set of "Lego blocks" you can use to build a parser
; following any discipline and performing validation to any degree. As
; an example of the parser construction, this file includes a
; semi-validating SXML parser.

; The present XML framework has a "sequential" feel of SAX yet a
; "functional style" of DOM. Like a SAX parser, the framework scans
; the document only once and permits incremental processing. An
; application that handles document elements in order can run as
; efficiently as possible. _Unlike_ a SAX parser, the framework does
; not require an application register stateful callbacks and surrender
; control to the parser. Rather, it is the application that can drive
; the framework -- calling its functions to get the current lexical or
; syntax element. These functions do not maintain or mutate any state
; save the input port. Therefore, the framework permits parsing of XML
; in a pure functional style, with the input port being a monad (or a
; linear, read-once parameter).

; Besides the PORT, there is another monad -- SEED. Most of the
; middle- and high-level parsers are single-threaded through the
; seed. The functions of this framework do not process or affect the
; SEED in any way: they simply pass it around as an instance of an
; opaque datatype.  User functions, on the other hand, can use the
; seed to maintain user's state, to accumulate parsing results, etc. A
; user can freely mix his own functions with those of the
; framework. On the other hand, the user may wish to instantiate a
; high-level parser: ssax:make-elem-parser or ssax:make-parser.  In
; the latter case, the user must provide functions of specific
; signatures, which are called at predictable moments during the
; parsing: to handle character data, element data, or processing
; instructions (PI). The functions are always given the SEED, among
; other parameters, and must return the new SEED.

; From a functional point of view, XML parsing is a combined
; pre-post-order traversal of a "tree" that is the XML document
; itself. This down-and-up traversal tells the user about an element
; when its start tag is encountered. The user is notified about the
; element once more, after all element's children have been
; handled. The process of XML parsing therefore is a fold over the
; raw XML document. Unlike a fold over trees defined in [1], the
; parser is necessarily single-threaded -- obviously as elements
; in a text XML document are laid down sequentially. The parser
; therefore is a tree fold that has been transformed to accept an
; accumulating parameter [1,2].

; Formally, the denotational semantics of the parser can be expressed
; as
; parser:: (Start-tag -> Seed -> Seed) ->
;	   (Start-tag -> Seed -> Seed -> Seed) ->
;	   (Char-Data -> Seed -> Seed) ->
;	   XML-text-fragment -> Seed -> Seed
; parser fdown fup fchar "<elem attrs> content </elem>" seed
;  = fup "<elem attrs>" seed
;	(parser fdown fup fchar "content" (fdown "<elem attrs>" seed))
;
; parser fdown fup fchar "char-data content" seed
;  = parser fdown fup fchar "content" (fchar "char-data" seed)
;
; parser fdown fup fchar "elem-content content" seed
;  = parser fdown fup fchar "content" (
;	parser fdown fup fchar "elem-content" seed)

; Compare the last two equations with the left fold
; fold-left kons elem:list seed = fold-left kons list (kons elem seed)

; The real parser created my ssax:make-parser is slightly more complicated,
; to account for processing instructions, entity references, namespaces,
; processing of document type declaration, etc.


; The XML standard document referred to in this module is
;	http://www.w3.org/TR/1998/REC-xml-19980210.html
;
; The present file also defines a procedure that parses the text of an
; XML document or of a separate element into SXML, an
; S-expression-based model of an XML Information Set. SXML is also an
; Abstract Syntax Tree of an XML document. SXML is similar
; but not identical to DOM; SXML is particularly suitable for
; Scheme-based XML/HTML authoring, SXPath queries, and tree
; transformations. See SXML.html for more details.
; SXML is a term implementation of evaluation of the XML document [3].
; The other implementation is context-passing.

; The present frameworks fully supports the XML Namespaces Recommendation:
;	http://www.w3.org/TR/REC-xml-names/
; Other links:
; [1] Jeremy Gibbons, Geraint Jones, "The Under-appreciated Unfold,"
; Proc. ICFP'98, 1998, pp. 273-279.
; [2] Richard S. Bird, The promotion and accumulation strategies in
; transformational programming, ACM Trans. Progr. Lang. Systems,
; 6(4):487-504, October 1984.
; [3] Ralf Hinze, "Deriving Backtracking Monad Transformers,"
; Functional Pearl. Proc ICFP'00, pp. 186-197.

; IMPORT
; parser-error ssax:warn, see Handling of errors, below
; functions declared in files util.scm, input-parse.scm and look-for-str.scm
; char-encoding.scm for various platform-specific character-encoding functions.
; From SRFI-13: string-concatenate/shared and string-concatenate-reverse/shared
; If a particular implementation lacks SRFI-13 support, please
; include the file srfi-13-local.scm

; Handling of errors
; This package relies on a function parser-error, which must be defined
; by a user of the package. The function has the following signature:
;	parser-error PORT MESSAGE SPECIALISING-MSG*
; Many procedures of this package call 'parser-error' whenever a
; parsing, well-formedness or validation error is encountered. The
; first argument is a port, which typically points to the offending
; character or its neighborhood. Most of the Scheme systems let the
; user query a PORT for the current position. The MESSAGE argument
; indicates a failed XML production or a failed XML constraint. The
; latter is referred to by its anchor name in the XML Recommendation
; or XML Namespaces Recommendation. The parsing library (e.g.,
; next-token, assert-curr-char) invoke 'parser-error' as well, in
; exactly the same way.  See input-parse.scm for more details.
; See
;	http://pair.com/lisovsky/download/parse-error.scm
; for an excellent example of such a redefined parser-error function.
;
; In addition, the present code invokes a function ssax:warn
;   ssax:warn PORT MESSAGE SPECIALISING-MSG*
; to notify the user about warnings that are NOT errors but still
; may alert the user.
;
; Again, parser-error and ssax:warn are supposed to be defined by the
; user. However, if a run-test macro below is set to include
; self-tests, this present code does provide the definitions for these
; functions to allow tests to run.

; Misc notes
; It seems it is highly desirable to separate tests out in a dedicated
; file.
;
; Jim Bender wrote on Mon, 9 Sep 2002 20:03:42 EDT on the SSAX-SXML
; mailing list (message A fine-grained "lego")
; The task was to record precise source location information, as PLT
; does with its current XML parser. That parser records the start and
; end location (filepos, line#, column#) for pi, elements, attributes,
; chuncks of "pcdata".
; As suggested above, though, in some cases I needed to be able force
; open an interface that did not yet exist. For instance, I added an
; "end-char-data-hook", which would be called at the end of char-data
; fragment. This returns a function of type (seed -> seed) which is
; invoked on the current seed only if read-char-data has indeed reached
; the end of a block of char data (after reading a new token.
; But the deepest interface that I needed to expose was that of reading
; attributes. In the official distribution, this is not even a separate
; function. Instead, it is embedded within SSAX:read-attributes.  This
; required some small re-structuring as well.
; This definitely will not be to everyone's taste (nor needed by most).
; Certainly, the existing make-parser interface addresses most custom
; needs. And likely 80-90 lines of a "link specification" to create a
; parser from many tiny little lego blocks may please only a few, while
; appalling others.
; The code is available at http://celtic.benderweb.net/ssax-lego.plt or
; http://celtic.benderweb.net/ssax-lego.tar.gz
; In the examples directory, I provide:
; - a unit version of the make-parser interface,
; - a simple SXML parser using that interface,
; - an SXML parser which directly uses the "new lego",
; - a pseudo-SXML parser, which records source location information
; - and lastly a parser which returns the structures used in PLT's xml
; collection, with source location information

; $Id: SSAX.scm,v 5.1 2004/07/07 16:02:30 sperber Exp $
;^^^^^^^^^


	; See the Makefile in the ../tests directory
	; (in particular, the rule vSSAX) for an example of how
	; to run this code on various Scheme systems.
	; See SSAX examples for many samples of using this code,
	; again, on a variety of Scheme systems.
	; See http://ssax.sf.net/


; The following macro runs built-in test cases -- or does not run,
; depending on which of the two cases below you commented out
; Case 1: no tests:
;(define-macro run-test (lambda body '(begin #f)))
;(define-syntax run-test (syntax-rules () ((run-test . args) (begin #f))))

; Case 2: with tests.
; The following macro could've been defined just as
; (define-macro run-test (lambda body `(begin (display "\n-->Test\n") ,@body)))
;
; Instead, it's more involved, to make up for case-insensitivity of
; symbols on some Scheme systems. In Gambit, symbols are case
; sensitive: (eq? 'A 'a) is #f and (eq? 'Aa (string->symbol "Aa")) is
; #t.  On some systems, symbols are case-insensitive and just the
; opposite is true.  Therefore, we introduce a notation '"ASymbol" (a
; quoted string) that stands for a case-_sensitive_ ASymbol -- on any
; R5RS Scheme system. This notation is valid only within the body of
; run-test.
; The notation is implemented by scanning the run-test's
; body and replacing every occurrence of (quote "str") with the result
; of (string->symbol "str"). We can do such a replacement at macro-expand
; time (rather than at run time).

; Here's the previous version of run-test, implemented as a low-level
; macro.
; (define-macro run-test
;   (lambda body
;     (define (re-write body)
;       (cond
;        ((vector? body)
; 	(list->vector (re-write (vector->list body))))
;        ((not (pair? body)) body)
;        ((and (eq? 'quote (car body)) (pair? (cdr body))
; 	     (string? (cadr body)))
; 	(string->symbol (cadr body)))
;        (else (cons (re-write (car body)) (re-write (cdr body))))))
;     (cons 'begin (re-write body))))
;
; For portability, it is re-written as syntax-rules. The syntax-rules
; version is less powerful: for example, it can't handle
; (case x (('"Foo") (do-on-Foo))) whereas the low-level macro
; could correctly place a case-sensitive symbol at the right place.
; We also do not scan vectors (because we don't use them here).
; Twice-deep quasiquotes aren't handled either.
; Still, the syntax-rules version satisfies our immediate needs.
; Incidentally, I originally didn't believe that the macro below
; was at all possible.
;
; The macro is written in a continuation-passing style. A continuation
; typically has the following structure: (k-head ! . args)
; When the continuation is invoked, we expand into
; (k-head <computed-result> . arg). That is, the dedicated symbol !
; is the placeholder for the result.
;
; It seems that the most modular way to write the run-test macro would
; be the following
;
; (define-syntax run-test
;  (syntax-rules ()
;   ((run-test . ?body)
;     (letrec-syntax
;       ((scan-exp			; (scan-exp body k)
; 	 (syntax-rules (quote quasiquote !)
; 	   ((scan-exp (quote (hd . tl)) k)
; 	     (scan-lit-lst (hd . tl) (do-wrap ! quasiquote k)))
; 	   ((scan-exp (quote x) (k-head ! . args))
; 	     (k-head
; 	       (if (string? (quote x)) (string->symbol (quote x)) (quote x))
; 	       . args))
; 	   ((scan-exp (hd . tl) k)
; 	     (scan-exp hd (do-tl ! scan-exp tl k)))
; 	   ((scan-exp x (k-head ! . args))
; 	     (k-head x . args))))
; 	(do-tl
; 	  (syntax-rules (!)
; 	    ((do-tl processed-hd fn () (k-head ! . args))
; 	      (k-head (processed-hd) . args))
; 	    ((do-tl processed-hd fn old-tl k)
; 	      (fn old-tl (do-cons ! processed-hd k)))))
; 	...
; 	(do-finish
; 	  (syntax-rules ()
; 	    ((do-finish (new-body)) new-body)
; 	    ((do-finish new-body) (begin . new-body))))
; 	...
;       (scan-exp ?body (do-finish !))
; ))))
;
; Alas, that doesn't work on all systems. We hit yet another dark
; corner of the R5RS macros. The reason is that run-test is used in
; the code below to introduce definitions. For example:
; (run-test
;  (define (ssax:warn port msg . other-msg)
;    (apply cerr (cons* nl "Warning: " msg other-msg)))
; )
; This code expands to
; (begin
;    (define (ssax:warn port msg . other-msg) ...))
; so the definition gets spliced in into the top level. Right?
; Well, On Petite Chez Scheme it is so. However, many other systems
; don't like this approach. The reason is that the invocation of
; (run-test (define (ssax:warn port msg . other-msg) ...))
; first expands into
; (letrec-syntax (...)
;   (scan-exp ((define (ssax:warn port msg . other-msg) ...)) ...))
; because of the presence of (letrec-syntax ...), the begin form that
; is generated eventually is no longer at the top level! The begin
; form in Scheme is an overloading of two distinct forms: top-level
; begin and the other begin. The forms have different rules: for example,
; (begin (define x 1)) is OK for a top-level begin but not OK for
; the other begin. Some Scheme systems see the that the macro
; (run-test ...) expands into (letrec-syntax ...) and decide right there
; that any further (begin ...) forms are NOT top-level begin forms.
; The only way out is to make sure all our macros are top-level.
; The best approach <sigh> seems to be to make run-test one huge
; top-level macro.


#;(define-syntax run-test
 (syntax-rules (define)
   ((run-test "scan-exp" (define vars body))
    (define vars (run-test "scan-exp" body)))
   ((run-test "scan-exp" ?body)
    (letrec-syntax
      ((scan-exp			; (scan-exp body k)
	 (syntax-rules (quote quasiquote !)
	   ((scan-exp '() (k-head ! . args))
	     (k-head '() . args))
	   ((scan-exp (quote (hd . tl)) k)
	     (scan-lit-lst (hd . tl) (do-wrap ! quasiquote k)))
	   ((scan-exp (quasiquote (hd . tl)) k)
	     (scan-lit-lst (hd . tl) (do-wrap ! quasiquote k)))
	   ((scan-exp (quote x) (k-head ! . args))
	     (k-head
	       (if (string? (quote x)) (string->symbol (quote x)) (quote x))
	       . args))
	   ((scan-exp (hd . tl) k)
	     (scan-exp hd (do-tl ! scan-exp tl k)))
	   ((scan-exp x (k-head ! . args))
	     (k-head x . args))))
	(do-tl
	  (syntax-rules (!)
	    ((do-tl processed-hd fn () (k-head ! . args))
	      (k-head (processed-hd) . args))
	    ((do-tl processed-hd fn old-tl k)
	      (fn old-tl (do-cons ! processed-hd k)))))
	(do-cons
	  (syntax-rules (!)
	    ((do-cons processed-tl processed-hd (k-head ! . args))
	      (k-head (processed-hd . processed-tl) . args))))
	(do-wrap
	  (syntax-rules (!)
	    ((do-wrap val fn (k-head ! . args))
	      (k-head (fn val) . args))))
	(do-finish
	  (syntax-rules ()
	    ((do-finish new-body) new-body)))

	(scan-lit-lst			; scan literal list
	  (syntax-rules (quote unquote unquote-splicing !)
	   ((scan-lit-lst '() (k-head ! . args))
	     (k-head '() . args))
	   ((scan-lit-lst (quote (hd . tl)) k)
	     (do-tl quote scan-lit-lst ((hd . tl)) k))
	   ((scan-lit-lst (unquote x) k)
	     (scan-exp x (do-wrap ! unquote k)))
	   ((scan-lit-lst (unquote-splicing x) k)
	     (scan-exp x (do-wrap ! unquote-splicing k)))
	   ((scan-lit-lst (quote x) (k-head ! . args))
	     (k-head
	       ,(if (string? (quote x)) (string->symbol (quote x)) (quote x))
	       . args))
	    ((scan-lit-lst (hd . tl) k)
	      (scan-lit-lst hd (do-tl ! scan-lit-lst tl k)))
	    ((scan-lit-lst x (k-head ! . args))
	      (k-head x . args))))
	)
      (scan-exp ?body (do-finish !))))
  ((run-test body ...)
   (begin
     (run-test "scan-exp" body) ...))
))

;; vyzo
(defrules run-test ()
  ((_ stuff ...) (begin)))

;========================================================================
;				Data Types

; TAG-KIND
;	a symbol 'START, 'END, 'PI, 'DECL, 'COMMENT, 'CDSECT
;		or 'ENTITY-REF that identifies a markup token

; UNRES-NAME
;	a name (called GI in the XML Recommendation) as given in an xml
;	document for a markup token: start-tag, PI target, attribute name.
;	If a GI is an NCName, UNRES-NAME is this NCName converted into
;	a Scheme symbol. If a GI is a QName, UNRES-NAME is a pair of
;	symbols: (PREFIX . LOCALPART)

; RES-NAME
;	An expanded name, a resolved version of an UNRES-NAME.
;	For an element or an attribute name with a non-empty namespace URI,
;	RES-NAME is a pair of symbols, (URI-SYMB . LOCALPART).
;	Otherwise, it's a single symbol.

; ELEM-CONTENT-MODEL
;	A symbol:
;	ANY	  - anything goes, expect an END tag.
;	EMPTY-TAG - no content, and no END-tag is coming
;	EMPTY	  - no content, expect the END-tag as the next token
;	PCDATA    - expect character data only, and no children elements
;	MIXED
;	ELEM-CONTENT

; URI-SYMB
;	A symbol representing a namespace URI -- or other symbol chosen
;	by the user to represent URI. In the former case,
;	URI-SYMB is created by %-quoting of bad URI characters and
;	converting the resulting string into a symbol.

; NAMESPACES
;	A list representing namespaces in effect. An element of the list
;	has one of the following forms:
;	(PREFIX URI-SYMB . URI-SYMB) or
;	(PREFIX USER-PREFIX . URI-SYMB)
;		USER-PREFIX is a symbol chosen by the user
;		to represent the URI.
;	(#f USER-PREFIX . URI-SYMB)
;		Specification of the user-chosen prefix and a URI-SYMBOL.
;	(*DEFAULT* USER-PREFIX . URI-SYMB)
;		Declaration of the default namespace
;	(*DEFAULT* #f . #f)
;		Un-declaration of the default namespace. This notation
;		represents overriding of the previous declaration
;	A NAMESPACES list may contain several elements for the same PREFIX.
;	The one closest to the beginning of the list takes effect.

; ATTLIST
;	An ordered collection of (NAME . VALUE) pairs, where NAME is
;	a RES-NAME or an UNRES-NAME. The collection is an ADT

; STR-HANDLER
;	A procedure of three arguments: STRING1 STRING2 SEED
;	returning a new SEED
;	The procedure is supposed to handle a chunk of character data
;	STRING1 followed by a chunk of character data STRING2.
;	STRING2 is a short string, often "\n" and even ""

; ENTITIES
;	An assoc list of pairs:
;	   (named-entity-name . named-entity-body)
;	where named-entity-name is a symbol under which the entity was
;	declared, named-entity-body is either a string, or
;	(for an external entity) a thunk that will return an
;	input port (from which the entity can be read).
;	named-entity-body may also be #f. This is an indication that a
;	named-entity-name is currently being expanded. A reference to
;	this named-entity-name will be an error: violation of the
;	WFC nonrecursion.

; XML-TOKEN -- a record

; In Gambit, you can use the following declaration:
; (define-structure xml-token kind head)
; The following declaration is "standard" as it follows SRFI-9:
;;(define-record-type  xml-token  (make-xml-token kind head)  xml-token?
;;  (kind  xml-token-kind)
;;  (head  xml-token-head) )
; No field mutators are declared as SSAX is a pure functional parser
;
; But to make the code more portable, we define xml-token simply as
; a pair. It suffices for us. Furthermore, xml-token-kind and xml-token-head
; can be defined as simple procedures. However, they are declared as
; macros below for efficiency.

(define (make-xml-token kind head) (cons kind head))
(define xml-token? pair?)
(define-syntax xml-token-kind
  (syntax-rules () ((xml-token-kind token) (car token))))
(define-syntax xml-token-head
  (syntax-rules () ((xml-token-head token) (cdr token))))

; (define-macro xml-token-kind (lambda (token) `(car ,token)))
; (define-macro xml-token-head (lambda (token) `(cdr ,token)))

; This record represents a markup, which is, according to the XML
; Recommendation, "takes the form of start-tags, end-tags, empty-element tags,
; entity references, character references, comments, CDATA section delimiters,
; document type declarations, and processing instructions."
;
;	kind -- a TAG-KIND
;	head -- an UNRES-NAME. For xml-tokens of kinds 'COMMENT and
;		'CDSECT, the head is #f
;
; For example,
;	<P>  => kind='START, head='P
;	</P> => kind='END, head='P
;	<BR/> => kind='EMPTY-EL, head='BR
;	<!DOCTYPE OMF ...> => kind='DECL, head='DOCTYPE
;	<?xml version="1.0"?> => kind='PI, head='xml
;	&my-ent; => kind = 'ENTITY-REF, head='my-ent
;
; Character references are not represented by xml-tokens as these references
; are transparently resolved into the corresponding characters.
;



; XML-DECL -- a record

; The following is Gambit-specific, see below for a portable declaration
;(define-structure xml-decl elems entities notations)

; The record represents a datatype of an XML document: the list of
; declared elements and their attributes, declared notations, list of
; replacement strings or loading procedures for parsed general
; entities, etc. Normally an xml-decl record is created from a DTD or
; an XML Schema, although it can be created and filled in in many other
; ways (e.g., loaded from a file).
;
; elems: an (assoc) list of decl-elem or #f. The latter instructs
;	the parser to do no validation of elements and attributes.
;
; decl-elem: declaration of one element:
;	(elem-name elem-content decl-attrs)
;	elem-name is an UNRES-NAME for the element.
;	elem-content is an ELEM-CONTENT-MODEL.
;	decl-attrs is an ATTLIST, of (ATTR-NAME . VALUE) associations
; !!!This element can declare a user procedure to handle parsing of an
; element (e.g., to do a custom validation, or to build a hash of
; IDs as they're encountered).
;
; decl-attr: an element of an ATTLIST, declaration of one attribute
;	(attr-name content-type use-type default-value)
;	attr-name is an UNRES-NAME for the declared attribute
;	content-type is a symbol: CDATA, NMTOKEN, NMTOKENS, ...
;		or a list of strings for the enumerated type.
;	use-type is a symbol: REQUIRED, IMPLIED, FIXED
;	default-value is a string for the default value, or #f if not given.
;
;

; see a function make-empty-xml-decl to make a XML declaration entry
; suitable for a non-validating parsing.


;-------------------------
; Utilities

;   ssax:warn PORT MESSAGE SPECIALISING-MSG*
; to notify the user about warnings that are NOT errors but still
; may alert the user.
; Result is unspecified.
; We need to define the function to allow the self-tests to run.
; Normally the definition of ssax:warn is to be provided by the user.
(run-test
 (define (ssax:warn port msg . other-msg)
   (apply cerr (cons* nl "Warning: " msg other-msg)))
)


;   parser-error PORT MESSAGE SPECIALISING-MSG*
; to let the user know of a syntax error or a violation of a
; well-formedness or validation constraint.
; Result is unspecified.
; We need to define the function to allow the self-tests to run.
; Normally the definition of parser-error is to be provided by the user.
(run-test
 (define (parser-error port msg . specializing-msgs)
   (apply error (cons msg specializing-msgs)))
)

; The following is a function that is often used in validation tests,
; to make sure that the computed result matches the expected one.
; This function is a standard equal? predicate with one exception.
; On Scheme systems where (string->symbol "A") and a symbol A
; are the same, equal_? is precisely equal?
; On other Scheme systems, we compare symbols disregarding their case.
; Since this function is used only in tests, we don't have to
; strive to make it efficient.
(run-test
 (define (equal_? e1 e2)
   (if (eq? 'A (string->symbol "A")) (equal? e1 e2)
       (cond
	((symbol? e1)
	 (and (symbol? e2)
	      (string-ci=? (symbol->string e1) (symbol->string e2))))
	((pair? e1)
	 (and (pair? e2)
	      (equal_? (car e1) (car e2)) (equal_? (cdr e1) (cdr e2))))
	((vector? e1)
	 (and (vector? e2) (equal_? (vector->list e1) (vector->list e2))))
	(else
	 (equal? e1 e2)))))
)

; The following function, which is often used in validation tests,
; lets us conveniently enter newline, CR and tab characters in a character
; string.
;	unesc-string: ESC-STRING -> STRING
; where ESC-STRING is a character string that may contain
;    %n  -- for #\newline
;    %r  -- for #\return
;    %t  -- for #\tab
;    %%  -- for #\%
;
; The result of unesc-string is a character string with all %-combinations
; above replaced with their character equivalents

(run-test
 (define (unesc-string str)
   (call-with-input-string str
     (lambda (port)
       (let loop ((frags '()))
	 (let* ((token (next-token '() '(#\% *eof*) "unesc-string" port))
		(cterm (read-char port))
		(frags (cons token frags)))
	   (if (eof-object? cterm) (string-concatenate-reverse/shared frags)
	     (let ((cchar (read-char port)))  ; char after #\%
	       (if (eof-object? cchar)
		 (error "unexpected EOF after reading % in unesc-string:" str)
		 (loop
		   (cons
		     (case cchar
		       ((#\n) (string #\newline))
		       ((#\r) (string char-return))
		       ((#\t) (string char-tab))
		       ((#\%) "%")
		       (else (error "bad %-char in unesc-string:" cchar)))
		     frags))))))))))
)


; Test if a string is made of only whitespace
; An empty string is considered made of whitespace as well
(define (string-whitespace? str)
  (let ((len (string-length str)))
    (cond
     ((zero? len) #t)
     ((= 1 len) (char-whitespace? (string-ref str 0)))
     ((= 2 len) (and (char-whitespace? (string-ref str 0))
		     (char-whitespace? (string-ref str 1))))
     (else
      (let loop ((i 0))
	(or (>= i len)
	    (and (char-whitespace? (string-ref str i))
		 (loop (inc i)))))))))

; Find val in alist
; Return (values found-el remaining-alist) or
;	 (values #f alist)

(define (assq-values val alist)
  (let loop ((alist alist) (scanned '()))
    (cond
     ((null? alist) (values #f scanned))
     ((equal? val (caar alist))
      (values (car alist) (append scanned (cdr alist))))
     (else
      (loop (cdr alist) (cons (car alist) scanned))))))

; From SRFI-1
(define (fold-right kons knil lis1)
    (let recur ((lis lis1))
       (if (null? lis) knil
	    (let ((head (car lis)))
	      (kons head (recur (cdr lis)))))))

; Left fold combinator for a single list
(define (fold kons knil lis1)
  (let lp ((lis lis1) (ans knil))
    (if (null? lis) ans
      (lp (cdr lis) (kons (car lis) ans)))))



;========================================================================
;		Lower-level parsers and scanners
;
; They deal with primitive lexical units (Names, whitespaces, tags)
; and with pieces of more generic productions. Most of these parsers
; must be called in appropriate context. For example, ssax:complete-start-tag
; must be called only when the start-tag has been detected and its GI
; has been read.

;------------------------------------------------------------------------
;			Low-level parsing code

; Skip the S (whitespace) production as defined by
; [3] S ::= (#x20 | #x9 | #xD | #xA)
; The procedure returns the first not-whitespace character it
; encounters while scanning the PORT. This character is left
; on the input stream.

(define ssax:S-chars (map ascii->char '(32 10 9 13)))

(define (ssax:skip-S port)
  (skip-while ssax:S-chars port))


; Read a Name lexem and return it as string
; [4] NameChar ::= Letter | Digit | '.' | '-' | '_' | ':'
;                  | CombiningChar | Extender
; [5] Name ::= (Letter | '_' | ':') (NameChar)*
;
; This code supports the XML Namespace Recommendation REC-xml-names,
; which modifies the above productions as follows:
;
; [4] NCNameChar ::= Letter | Digit | '.' | '-' | '_'
;                       | CombiningChar | Extender
; [5] NCName ::= (Letter | '_') (NCNameChar)*
; As the Rec-xml-names says,
; "An XML document conforms to this specification if all other tokens
; [other than element types and attribute names] in the document which
; are required, for XML conformance, to match the XML production for
; Name, match this specification's production for NCName."
; Element types and attribute names must match the production QName,
; defined below.

; Check to see if a-char may start a NCName
(define (ssax:ncname-starting-char? a-char)
  (and (char? a-char)
    (or
      (char-alphabetic? a-char)
      (char=? #\_ a-char))))


; Read a NCName starting from the current position in the PORT and
; return it as a symbol.
(define (ssax:read-NCName port)
  (let ((first-char (peek-char port)))
    (or (ssax:ncname-starting-char? first-char)
      (parser-error port "XMLNS [4] for '" first-char "'")))
  (string->symbol
    (next-token-of
      (lambda (c)
        (cond
          ((eof-object? c) #f)
          ((char-alphabetic? c) c)
          ((string-index "0123456789.-_" c) c)
          (else #f)))
      port)))

; Read a (namespace-) Qualified Name, QName, from the current
; position in the PORT.
; From REC-xml-names:
;	[6] QName ::= (Prefix ':')? LocalPart
;	[7] Prefix ::= NCName
;	[8] LocalPart ::= NCName
; Return: an UNRES-NAME
(define (ssax:read-QName port)
  (let ((prefix-or-localpart (ssax:read-NCName port)))
    (case (peek-char port)
      ((#\:)			; prefix was given after all
       (read-char port)		; consume the colon
       (cons prefix-or-localpart (ssax:read-NCName port)))
      (else prefix-or-localpart) ; Prefix was omitted
      )))

; The prefix of the pre-defined XML namespace
(define ssax:Prefix-XML (string->symbol "xml"))

(run-test
 (assert (eq? '_
		 (call-with-input-string "_" ssax:read-NCName)))
 (assert (eq? '_
		 (call-with-input-string "_" ssax:read-QName)))
 (assert (eq? (string->symbol "_abc_")
	      (call-with-input-string "_abc_;" ssax:read-NCName)))
 (assert (eq? (string->symbol "_abc_")
	      (call-with-input-string "_abc_;" ssax:read-QName)))
 (assert (eq? (string->symbol "_a.b")
	      (call-with-input-string "_a.b " ssax:read-QName)))
 (assert (equal? (cons (string->symbol "_a.b") (string->symbol "d.1-ef-"))
	      (call-with-input-string "_a.b:d.1-ef-;" ssax:read-QName)))
 (assert (equal? (cons (string->symbol "a") (string->symbol "b"))
	      (call-with-input-string "a:b:c" ssax:read-QName)))

 (assert (failed? (call-with-input-string ":abc" ssax:read-NCName)))
 (assert (failed? (call-with-input-string "1:bc" ssax:read-NCName)))
)

; Compare one RES-NAME or an UNRES-NAME with the other.
; Return a symbol '<, '>, or '= depending on the result of
; the comparison.
; Names without PREFIX are always smaller than those with the PREFIX.
(define name-compare
  (letrec ((symbol-compare
	    (lambda (symb1 symb2)
	      (cond
	       ((eq? symb1 symb2) '=)
	       ((string<? (symbol->string symb1) (symbol->string symb2))
		'<)
	       (else '>)))))
    (lambda (name1 name2)
      (cond
       ((symbol? name1) (if (symbol? name2) (symbol-compare name1 name2)
			    '<))
       ((symbol? name2) '>)
       ((eq? name2 ssax:largest-unres-name) '<)
       ((eq? name1 ssax:largest-unres-name) '>)
       ((eq? (car name1) (car name2))	; prefixes the same
	(symbol-compare (cdr name1) (cdr name2)))
       (else (symbol-compare (car name1) (car name2)))))))

; An UNRES-NAME that is postulated to be larger than anything that can occur in
; a well-formed XML document.
; name-compare enforces this postulate.
(define ssax:largest-unres-name (cons
				  (string->symbol "#LARGEST-SYMBOL")
				  (string->symbol "#LARGEST-SYMBOL")))

(run-test
 (assert (eq? '= (name-compare 'ABC 'ABC)))
 (assert (eq? '< (name-compare 'ABC 'ABCD)))
 (assert (eq? '> (name-compare 'XB 'ABCD)))
 (assert (eq? '> (name-compare '(HTML . PRE) 'PRE)))
 (assert (eq? '< (name-compare 'HTML '(HTML . PRE))))
 (assert (eq? '= (name-compare '(HTML . PRE) '(HTML . PRE))))
 (assert (eq? '< (name-compare '(HTML . PRE) '(XML . PRE))))
 (assert (eq? '> (name-compare '(HTML . PRE) '(HTML . P))))
 (assert (eq? '< (name-compare '(HTML . PRE) ssax:largest-unres-name)))
 (assert (eq? '< (name-compare '(ZZZZ . ZZZ) ssax:largest-unres-name)))
 (assert (eq? '> (name-compare ssax:largest-unres-name '(ZZZZ . ZZZ) )))
)



; procedure:	ssax:read-markup-token PORT
; This procedure starts parsing of a markup token. The current position
; in the stream must be #\<. This procedure scans enough of the input stream
; to figure out what kind of a markup token it is seeing. The procedure returns
; an xml-token structure describing the token. Note, generally reading
; of the current markup is not finished! In particular, no attributes of
; the start-tag token are scanned.
;
; Here's a detailed break out of the return values and the position in the PORT
; when that particular value is returned:
;	PI-token:	only PI-target is read.
;			To finish the Processing Instruction and disregard it,
;			call ssax:skip-pi. ssax:read-attributes may be useful
;			as well (for PIs whose content is attribute-value
;			pairs)
;	END-token:	The end tag is read completely; the current position
;			is right after the terminating #\> character.
;	COMMENT		is read and skipped completely. The current position
;			is right after "-->" that terminates the comment.
;	CDSECT		The current position is right after "<!CDATA["
;			Use ssax:read-cdata-body to read the rest.
;	DECL		We have read the keyword (the one that follows "<!")
;			identifying this declaration markup. The current
;			position is after the keyword (usually a
;			whitespace character)
;
;	START-token	We have read the keyword (GI) of this start tag.
;			No attributes are scanned yet. We don't know if this
;			tag has an empty content either.
;			Use ssax:complete-start-tag to finish parsing of
;			the token.

(define ssax:read-markup-token ; procedure ssax:read-markup-token port
 (let ()
  		; we have read "<!-". Skip through the rest of the comment
		; Return the 'COMMENT token as an indication we saw a comment
		; and skipped it.
  (define (skip-comment port)
    (assert-curr-char '(#\-) "XML [15], second dash" port)
    (if (not (find-string-from-port? "-->" port))
      (parser-error port "XML [15], no -->"))
    (make-xml-token 'COMMENT #f))

  		; we have read "<![" that must begin a CDATA section
  (define (read-cdata port)
    (assert (string=? "CDATA[" (read-string 6 port)))
    (make-xml-token 'CDSECT #f))

  (lambda (port)
    (assert-curr-char '(#\<) "start of the token" port)
    (case (peek-char port)
      ((#\/) (read-char port)
       (begin0 (make-xml-token 'END (ssax:read-QName port))
	       (ssax:skip-S port)
	       (assert-curr-char '(#\>) "XML [42]" port)))
      ((#\?) (read-char port) (make-xml-token 'PI (ssax:read-NCName port)))
      ((#\!)
       (case (peek-next-char port)
	 ((#\-) (read-char port) (skip-comment port))
	 ((#\[) (read-char port) (read-cdata port))
	 (else (make-xml-token 'DECL (ssax:read-NCName port)))))
      (else (make-xml-token 'START (ssax:read-QName port)))))
))


; The current position is inside a PI. Skip till the rest of the PI
(define (ssax:skip-pi port)
  (if (not (find-string-from-port? "?>" port))
    (parser-error port "Failed to find ?> terminating the PI")))


; The current position is right after reading the PITarget. We read the
; body of PI and return is as a string. The port will point to the
; character right after '?>' combination that terminates PI.
; [16] PI ::= '<?' PITarget (S (Char* - (Char* '?>' Char*)))? '?>'

(define (ssax:read-pi-body-as-string port)
  (ssax:skip-S port)		; skip WS after the PI target name
  (string-concatenate/shared
    (let loop ()
      (let ((pi-fragment
	     (next-token '() '(#\?) "reading PI content" port)))
	(if (eqv? #\> (peek-next-char port))
	    (begin
	      (read-char port)
	      (cons pi-fragment '()))
	    (cons* pi-fragment "?" (loop)))))))

(run-test
 (assert (equal? "p1 content "
    (call-with-input-string "<?pi1  p1 content ?>"
      (lambda (port)
	(ssax:read-markup-token port)
	(ssax:read-pi-body-as-string port)))))
 (assert (equal? "pi2? content? ?"
    (call-with-input-string "<?pi2 pi2? content? ??>"
      (lambda (port)
	(ssax:read-markup-token port)
	(ssax:read-pi-body-as-string port)))))
)

;(define (ssax:read-pi-body-as-name-values port)

; The current pos in the port is inside an internal DTD subset
; (e.g., after reading #\[ that begins an internal DTD subset)
; Skip until the "]>" combination that terminates this DTD
(define (ssax:skip-internal-dtd port)
  (if (not (find-string-from-port? "]>" port))
    (parser-error port
		  "Failed to find ]> terminating the internal DTD subset")))


; procedure+: 	ssax:read-cdata-body PORT STR-HANDLER SEED
;
; This procedure must be called after we have read a string "<![CDATA["
; that begins a CDATA section. The current position must be the first
; position of the CDATA body. This function reads _lines_ of the CDATA
; body and passes them to a STR-HANDLER, a character data consumer.
;
; The str-handler is a STR-HANDLER, a procedure STRING1 STRING2 SEED.
; The first STRING1 argument to STR-HANDLER never contains a newline.
; The second STRING2 argument often will. On the first invocation of
; the STR-HANDLER, the seed is the one passed to ssax:read-cdata-body
; as the third argument. The result of this first invocation will be
; passed as the seed argument to the second invocation of the line
; consumer, and so on. The result of the last invocation of the
; STR-HANDLER is returned by the ssax:read-cdata-body.  Note a
; similarity to the fundamental 'fold' iterator.
;
; Within a CDATA section all characters are taken at their face value,
; with only three exceptions:
;	CR, LF, and CRLF are treated as line delimiters, and passed
;	as a single #\newline to the STR-HANDLER
;	"]]>" combination is the end of the CDATA section.
;	&gt; is treated as an embedded #\> character
; Note, &lt; and &amp; are not specially recognized (and are not expanded)!

(define ssax:read-cdata-body
  (let ((cdata-delimiters (list char-return #\newline #\] #\&)))

    (lambda (port str-handler seed)
      (let loop ((seed seed))
	(let ((fragment (next-token '() cdata-delimiters
				    "reading CDATA" port)))
			; that is, we're reading the char after the 'fragment'
     (case (read-char port)
       ((#\newline) (loop (str-handler fragment nl seed)))
       ((#\])
	(if (not (eqv? (peek-char port) #\]))
	    (loop (str-handler fragment "]" seed))
	    (let check-after-second-braket
		((seed (if (string-null? fragment) seed
			   (str-handler fragment "" seed))))
	      (case (peek-next-char port)	; after the second bracket
		((#\>) (read-char port)	seed)	; we have read "]]>"
		((#\]) (check-after-second-braket
			(str-handler "]" "" seed)))
		(else (loop (str-handler "]]" "" seed)))))))
       ((#\&)		; Note that #\& within CDATA may stand for itself
	(let ((ent-ref 	; it does not have to start an entity ref
               (next-token-of (lambda (c)
		 (and (not (eof-object? c)) (char-alphabetic? c) c)) port)))
	  (cond		; "&gt;" is to be replaced with #\>
	   ((and (string=? "gt" ent-ref) (eqv? (peek-char port) #\;))
	    (read-char port)
	    (loop (str-handler fragment ">" seed)))
	   (else
	    (loop
	     (str-handler ent-ref ""
			  (str-handler fragment "&" seed)))))))
       (else		; Must be CR: if the next char is #\newline, skip it
         (if (eqv? (peek-char port) #\newline) (read-char port))
         (loop (str-handler fragment nl seed)))
       ))))))

; a few lines of validation code
(run-test (letrec
  ((consumer (lambda (fragment foll-fragment seed)
     (cons* (if (equal? foll-fragment (string #\newline))
		" NL" foll-fragment) fragment seed)))
   (test (lambda (str expected-result)
	   (newline) (display "body: ") (write str)
	   (newline) (display "Result: ")
	   (let ((result
		   (reverse
		     (call-with-input-string (unesc-string str)
		       (lambda (port) (ssax:read-cdata-body port consumer '()))
		       ))))
	     (write result)
	     (assert (equal? result expected-result)))))
   )
  (test "]]>" '())
  (test "abcd]]>" '("abcd" ""))
  (test "abcd]]]>" '("abcd" "" "]" ""))
  (test "abcd]]]]>" '("abcd" "" "]" "" "]" ""))
  (test "abcd]]]]]>" '("abcd" "" "]" "" "]" "" "]" ""))
  (test "abcd]]]a]]>" '("abcd" "" "]" "" "]]" "" "a" ""))
  (test "abc%r%ndef%n]]>" '("abc" " NL" "def" " NL"))
  (test "%r%n%r%n]]>" '("" " NL" "" " NL"))
  (test "%r%n%r%na]]>" '("" " NL" "" " NL" "a" ""))
  (test "%r%r%r%na]]>" '("" " NL" "" " NL" "" " NL" "a" ""))
  (test "abc&!!!]]>" '("abc" "&" "" "" "!!!" ""))
  (test "abc]]&gt;&gt&amp;]]]&gt;and]]>"
    '("abc" "" "]]" "" "" ">" "" "&" "gt" "" "" "&" "amp" "" ";" "" "]" ""
      "]]" "" "" ">" "and" ""))
))


; procedure+:	ssax:read-char-ref PORT
;
; [66]  CharRef ::=  '&#' [0-9]+ ';'
;                  | '&#x' [0-9a-fA-F]+ ';'
;
; This procedure must be called after we we have read "&#"
; that introduces a char reference.
; The procedure reads this reference and returns the corresponding char
; The current position in PORT will be after ";" that terminates
; the char reference
; Faults detected:
;	WFC: XML-Spec.html#wf-Legalchar
;
; According to Section "4.1 Character and Entity References"
; of the XML Recommendation:
;  "[Definition: A character reference refers to a specific character
;   in the ISO/IEC 10646 character set, for example one not directly
;   accessible from available input devices.]"
; Therefore, we use a ucscode->char function to convert a character
; code into the character -- *regardless* of the current character
; encoding of the input stream.

(define (ssax:read-char-ref port)
  (let* ((base
           (cond ((eqv? (peek-char port) #\x) (read-char port) 16)
                 (else 10)))
         (name (next-token '() '(#\;) "XML [66]" port))
         (char-code (string->number name base)))
    (read-char port)	; read the terminating #\; char
    (if (integer? char-code) (ucscode->char char-code)
      (parser-error port "[wf-Legalchar] broken for '" name "'"))))


; procedure+:	ssax:handle-parsed-entity PORT NAME ENTITIES
;		CONTENT-HANDLER STR-HANDLER SEED
;
; Expand and handle a parsed-entity reference
; port - a PORT
; name - the name of the parsed entity to expand, a symbol
; entities - see ENTITIES
; content-handler -- procedure PORT ENTITIES SEED
;	that is supposed to return a SEED
; str-handler - a STR-HANDLER. It is called if the entity in question
; turns out to be a pre-declared entity
;
; The result is the one returned by CONTENT-HANDLER or STR-HANDLER
; Faults detected:
;	WFC: XML-Spec.html#wf-entdeclared
;	WFC: XML-Spec.html#norecursion

(define ssax:predefined-parsed-entities
  `(
    (,(string->symbol "amp") . "&")
    (,(string->symbol "lt") . "<")
    (,(string->symbol "gt") . ">")
    (,(string->symbol "apos") . "'")
    (,(string->symbol "quot") . "\"")))

(define (ssax:handle-parsed-entity port name entities
				   content-handler str-handler seed)
  (cond	  ; First we check the list of the declared entities
   ((assq name entities) =>
    (lambda (decl-entity)
      (let ((ent-body (cdr decl-entity)) ; mark the list to prevent recursion
	    (new-entities (cons (cons name #f) entities)))
	(cond
	 ((string? ent-body)
	  (call-with-input-string ent-body
	     (lambda (port) (content-handler port new-entities seed))))
	 ((procedure? ent-body)
	  (let ((port (ent-body)))
	    (begin0
	     (content-handler port new-entities seed)
	     (close-input-port port))))
	 (else
	  (parser-error port "[norecursion] broken for " name))))))
    ((assq name ssax:predefined-parsed-entities)
     => (lambda (decl-entity)
	  (str-handler (cdr decl-entity) "" seed)))
    (else (parser-error port "[wf-entdeclared] broken for " name))))



; The ATTLIST Abstract Data Type
; Currently is implemented as an assoc list sorted in the ascending
; order of NAMES.

(define (make-empty-attlist) '())

; Add a name-value pair to the existing attlist preserving the order
; Return the new list, in the sorted ascending order.
; Return #f if a pair with the same name already exists in the attlist

(define (attlist-add attlist name-value)
  (if (null? attlist) (cons name-value attlist)
      (case (name-compare (car name-value) (caar attlist))
	((=) #f)
	((<) (cons name-value attlist))
	(else (cons (car attlist) (attlist-add (cdr attlist) name-value)))
	)))

(define attlist-null? null?)

; Given an non-null attlist, return a pair of values: the top and the rest
(define (attlist-remove-top attlist)
  (values (car attlist) (cdr attlist)))

(define (attlist->alist attlist) attlist)
(define attlist-fold fold)

; procedure+:	ssax:read-attributes PORT ENTITIES
;
; This procedure reads and parses a production Attribute*
; [41] Attribute ::= Name Eq AttValue
; [10] AttValue ::=  '"' ([^<&"] | Reference)* '"'
;                 | "'" ([^<&'] | Reference)* "'"
; [25] Eq ::= S? '=' S?
;
;
; The procedure returns an ATTLIST, of Name (as UNRES-NAME), Value (as string)
; pairs. The current character on the PORT is a non-whitespace character
; that is not an ncname-starting character.
;
; Note the following rules to keep in mind when reading an 'AttValue'
; "Before the value of an attribute is passed to the application
; or checked for validity, the XML processor must normalize it as follows:
; - a character reference is processed by appending the referenced
;   character to the attribute value
; - an entity reference is processed by recursively processing the
;   replacement text of the entity [see ENTITIES]
;   [named entities amp lt gt quot apos are assumed pre-declared]
; - a whitespace character (#x20, #xD, #xA, #x9) is processed by appending #x20
;   to the normalized value, except that only a single #x20 is appended for a
;   "#xD#xA" sequence that is part of an external parsed entity or the
;   literal entity value of an internal parsed entity
; - other characters are processed by appending them to the normalized value "
;
;
; Faults detected:
;	WFC: XML-Spec.html#CleanAttrVals
;	WFC: XML-Spec.html#uniqattspec

(define ssax:read-attributes  ; ssax:read-attributes port entities
 (let ((value-delimeters (append ssax:S-chars '(#\< #\&))))
		; Read the AttValue from the PORT up to the delimiter
		; (which can be a single or double-quote character,
		; or even a symbol *eof*)
		; 'prev-fragments' is the list of string fragments, accumulated
		; so far, in reverse order.
		; Return the list of fragments with newly read fragments
		; prepended.
  (define (read-attrib-value delimiter port entities prev-fragments)
    (let* ((new-fragments
	    (cons (next-token '() (cons delimiter value-delimeters)
		              "XML [10]" port)
	     prev-fragments))
	   (cterm (read-char port)))
      (cond
	((or (eof-object? cterm) (eqv? cterm delimiter))
	  new-fragments)
	((eqv? cterm char-return)	; treat a CR and CRLF as a LF
	  (if (eqv? (peek-char port) #\newline) (read-char port))
	  (read-attrib-value delimiter port entities
	                     (cons " " new-fragments)))
	((memv cterm ssax:S-chars)
	  (read-attrib-value delimiter port entities
	                     (cons " " new-fragments)))
	((eqv? cterm #\&)
	  (cond
	    ((eqv? (peek-char port) #\#)
	      (read-char port)
	      (read-attrib-value delimiter port entities
		(cons (string (ssax:read-char-ref port)) new-fragments)))
	    (else
	      (read-attrib-value delimiter port entities
		(read-named-entity port entities new-fragments)))))
	(else (parser-error port "[CleanAttrVals] broken")))))

		; we have read "&" that introduces a named entity reference.
		; read this reference and return the result of
		; normalizing of the corresponding string
		; (that is, read-attrib-value is applied to the replacement
		; text of the entity)
		; The current position will be after ";" that terminates
		; the entity reference
  (define (read-named-entity port entities fragments)
    (let ((name (ssax:read-NCName port)))
      (assert-curr-char '(#\;) "XML [68]" port)
      (ssax:handle-parsed-entity port name entities
	(lambda (port entities fragments)
	  (read-attrib-value '*eof* port entities fragments))
	(lambda (str1 str2 fragments)
	  (if (equal? "" str2) (cons str1 fragments)
	      (cons* str2 str1 fragments)))
	fragments)))

  (lambda (port entities)
    (let loop ((attr-list (make-empty-attlist)))
      (if (not (ssax:ncname-starting-char? (ssax:skip-S port))) attr-list
	  (let ((name (ssax:read-QName port)))
	    (ssax:skip-S port)
	    (assert-curr-char '(#\=) "XML [25]" port)
	    (ssax:skip-S port)
	    (let ((delimiter
		   (assert-curr-char '(#\' #\" ) "XML [10]" port)))
	      (loop
	       (or (attlist-add attr-list
		     (cons name
			   (string-concatenate-reverse/shared
			     (read-attrib-value delimiter port entities
						      '()))))
		   (parser-error port "[uniqattspec] broken for " name))))))))
))

; a few lines of validation code
(run-test (letrec
    ((test (lambda (str decl-entities expected-res)
	     (newline) (display "input: ") (write str)
	     (newline) (display "Result: ")
	     (let ((result
		     (call-with-input-string (unesc-string str)
		       (lambda (port)
			 (ssax:read-attributes port decl-entities)))))
	       (write result) (newline)
	       (assert (equal? result expected-res))))))
    (test "" '() '())
    (test "href='http://a%tb%r%n%r%n%nc'" '()
	  `((,(string->symbol "href") . "http://a b   c")))
    (test "href='http://a%tb%r%r%n%rc'" '()
	  `((,(string->symbol "href") . "http://a b   c")))
    (test "_1 ='12&amp;' _2= \"%r%n%t12&#10;3\">" '()
	  `((_1 . "12&") (_2 . ,(unesc-string "  12%n3"))))
    (test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&ent;34' />"
	  '((ent . "&lt;xx&gt;"))
	  `((,(string->symbol "Abc") . ,(unesc-string "<&>%n"))
	    (,(string->symbol "Next") . "12<xx>34")))
    (test "%tAbc='&lt;&amp;&gt;&#x0d;'%nNext='12&ent;34' />"
	  '((ent . "&lt;xx&gt;"))
	  `((,(string->symbol "Abc") . ,(unesc-string "<&>%r"))
	    (,(string->symbol "Next") . "12<xx>34")))
    (test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&en;34' />"
	  `((en . ,(lambda () (open-input-string "&quot;xx&apos;"))))
	  `((,(string->symbol "Abc") . ,(unesc-string "<&>%n"))
	    (,(string->symbol "Next") . "12\"xx'34")))
    (test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&ent;34' />"
	  '((ent . "&lt;&ent1;T;&gt;") (ent1 . "&amp;"))
	  `((,(string->symbol "Abc") . ,(unesc-string "<&>%n"))
	    (,(string->symbol "Next") . "12<&T;>34")))
    (assert (failed?
	(test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&ent;34' />"
	  '((ent . "<&ent1;T;&gt;") (ent1 . "&amp;")) '())))
    (assert (failed?
	(test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&ent;34' />"
	  '((ent . "&lt;&ent;T;&gt;") (ent1 . "&amp;")) '())))
    (assert (failed?
	(test "%tAbc='&lt;&amp;&gt;&#x0A;'%nNext='12&ent;34' />"
	  '((ent . "&lt;&ent1;T;&gt;") (ent1 . "&ent;")) '())))
    (test "html:href='http://a%tb%r%n%r%n%nc'" '()
	  `(((,(string->symbol "html") . ,(string->symbol "href"))
	     . "http://a b   c")))
    (test "html:href='ref1' html:src='ref2'" '()
	  `(((,(string->symbol "html") . ,(string->symbol "href"))
	     . "ref1")
	    ((,(string->symbol "html") . ,(string->symbol "src"))
	     . "ref2")))
    (test "html:href='ref1' xml:html='ref2'" '()
	  `(((,(string->symbol "html") . ,(string->symbol "href"))
	     . "ref1")
	    ((,ssax:Prefix-XML . ,(string->symbol "html"))
	     . "ref2")))
    (assert (failed? (test "html:href='ref1' html:href='ref2'" '() '())))
    (assert (failed? (test "html:href='<' html:href='ref2'" '() '())))
    (assert (failed? (test "html:href='ref1' html:href='&ref2;'" '() '())))
))

; ssax:resolve-name PORT UNRES-NAME NAMESPACES apply-default-ns?
;
; Convert an UNRES-NAME to a RES-NAME given the appropriate NAMESPACES
; declarations.
; the last parameter apply-default-ns? determines if the default
; namespace applies (for instance, it does not for attribute names)
;
; Per REC-xml-names/#nsc-NSDeclared, "xml" prefix is considered pre-declared
; and bound to the namespace name "http://www.w3.org/XML/1998/namespace".
;
; This procedure tests for the namespace constraints:
; http://www.w3.org/TR/REC-xml-names/#nsc-NSDeclared
(define ssax:current-resolve-namespaces (make-parameter #f))
(define (ssax:resolve-name port unres-name namespaces apply-default-ns?)
  (cond
   ((pair? unres-name) ;; it's a QNAME
    (if (not (ssax:current-resolve-namespaces))
      unres-name
      (cons
       (cond
	((assq (car unres-name) namespaces) => cadr)
	((eq? (car unres-name) ssax:Prefix-XML) ssax:Prefix-XML)
	(else
	 (parser-error port "[nsc-NSDeclared] broken; prefix " (car unres-name))))
       (cdr unres-name))))
   (apply-default-ns?	      ; Do apply the default namespace, if any
    (let ((default-ns (assq '*DEFAULT* namespaces)))
      (if (and (ssax:current-resolve-namespaces) default-ns (cadr default-ns))
	(cons (cadr default-ns) unres-name)
	unres-name)))	       ; no default namespace declared
   (else unres-name)))		; no prefix, don't apply the default-ns


(run-test
 (let* ((namespaces
	'((HTML UHTML . URN-HTML)
	  (HTML UHTML-1 . URN-HTML)
	  (A    UHTML . URN-HTML)))
	(namespaces-def
	 (cons
	  '(*DEFAULT* DEF . URN-DEF) namespaces))
	(namespaces-undef
	 (cons
	  '(*DEFAULT* #f . #f) namespaces-def))
	(port (current-input-port)))

   (assert (equal? 'ABC
		   (ssax:resolve-name port 'ABC namespaces #t)))
   (assert (equal? '(DEF . ABC)
		   (ssax:resolve-name port 'ABC namespaces-def #t)))
   (assert (equal? 'ABC
		   (ssax:resolve-name port 'ABC namespaces-def #f)))
   (assert (equal? 'ABC
		   (ssax:resolve-name port 'ABC namespaces-undef #t)))
   (assert (equal? '(UHTML . ABC)
		   (ssax:resolve-name port '(HTML . ABC) namespaces-def #t)))
   (assert (equal? '(UHTML . ABC)
		   (ssax:resolve-name port '(HTML . ABC) namespaces-def #f)))
   (assert (equal? `(,ssax:Prefix-XML . space)
		   (ssax:resolve-name port
		       `(,(string->symbol "xml") . space) namespaces-def #f)))
   (assert (failed?
		   (ssax:resolve-name port '(XXX . ABC) namespaces-def #f)))
))


; procedure+:	ssax:uri-string->symbol URI-STR
; Convert a URI-STR to an appropriate symbol
(define (ssax:uri-string->symbol uri-str)
  (string->symbol uri-str))

; procedure+:	ssax:complete-start-tag TAG PORT ELEMS ENTITIES NAMESPACES
;
; This procedure is to complete parsing of a start-tag markup. The
; procedure must be called after the start tag token has been
; read. TAG is an UNRES-NAME. ELEMS is an instance of xml-decl::elems;
; it can be #f to tell the function to do _no_ validation of elements
; and their attributes.
;
; This procedure returns several values:
;  ELEM-GI: a RES-NAME.
;  ATTRIBUTES: element's attributes, an ATTLIST of (RES-NAME . STRING)
;	pairs. The list does NOT include xmlns attributes.
;  NAMESPACES: the input list of namespaces amended with namespace
;	(re-)declarations contained within the start-tag under parsing
;  ELEM-CONTENT-MODEL

; On exit, the current position in PORT will be the first character after
; #\> that terminates the start-tag markup.
;
; Faults detected:
;	VC: XML-Spec.html#enum
;	VC: XML-Spec.html#RequiredAttr
;	VC: XML-Spec.html#FixedAttr
;	VC: XML-Spec.html#ValueType
;	WFC: XML-Spec.html#uniqattspec (after namespaces prefixes are resolved)
;	VC: XML-Spec.html#elementvalid
;	WFC: REC-xml-names/#dt-NSName

; Note, although XML Recommendation does not explicitly say it,
; xmlns and xmlns: attributes don't have to be declared (although they
; can be declared, to specify their default value)

; Procedure:  ssax:complete-start-tag tag-head port elems entities namespaces
(define ssax:complete-start-tag
 (let ((xmlns (string->symbol "xmlns"))
       (largest-dummy-decl-attr (list ssax:largest-unres-name #f #f #f)))

  ; Scan through the attlist and validate it, against decl-attrs
  ; Return an assoc list with added fixed or implied attrs.
  ; Note that both attlist and decl-attrs are ATTLISTs, and therefore,
  ; sorted
  (define (validate-attrs port attlist decl-attrs)

    ; Check to see decl-attr is not of use type REQUIRED. Add
    ; the association with the default value, if any declared
    (define (add-default-decl decl-attr result)
      (let*-values
	 (((attr-name content-type use-type default-value)
	   (apply values decl-attr)))
	 (and (eq? use-type 'REQUIRED)
	      (parser-error port "[RequiredAttr] broken for" attr-name))
	 (if default-value
	     (cons (cons attr-name default-value) result)
	     result)))

    (let loop ((attlist attlist) (decl-attrs decl-attrs) (result '()))
      (if (attlist-null? attlist)
	  (attlist-fold add-default-decl result decl-attrs)
	  (let*-values
	   (((attr attr-others)
	     (attlist-remove-top attlist))
	    ((decl-attr other-decls)
	     (if (attlist-null? decl-attrs)
		 (values largest-dummy-decl-attr decl-attrs)
		 (attlist-remove-top decl-attrs)))
	    )
	   (case (name-compare (car attr) (car decl-attr))
	     ((<)
	      (if (or (eq? xmlns (car attr))
		      (and (pair? (car attr)) (eq? xmlns (caar attr))))
		  (loop attr-others decl-attrs (cons attr result))
		  (parser-error port "[ValueType] broken for " attr)))
	     ((>)
	      (loop attlist other-decls
		    (add-default-decl decl-attr result)))
	     (else	; matched occurrence of an attr with its declaration
	      (let*-values
	       (((attr-name content-type use-type default-value)
		 (apply values decl-attr)))
	       ; Run some tests on the content of the attribute
	       (cond
		((eq? use-type 'FIXED)
		 (or (equal? (cdr attr) default-value)
		     (parser-error port "[FixedAttr] broken for " attr-name)))
		((eq? content-type 'CDATA) #t) ; everything goes
		((pair? content-type)
		 (or (member (cdr attr) content-type)
		     (parser-error port "[enum] broken for " attr-name "="
			    (cdr attr))))
		(else
		 (ssax:warn port "declared content type " content-type
		       " not verified yet")))
	       (loop attr-others other-decls (cons attr result)))))
	   ))))


  ; Add a new namespace declaration to namespaces.
  ; First we convert the uri-str to a uri-symbol and search namespaces for
  ; an association (_ user-prefix . uri-symbol).
  ; If found, we return the argument namespaces with an association
  ; (prefix user-prefix . uri-symbol) prepended.
  ; Otherwise, we prepend (prefix uri-symbol . uri-symbol)
  (define (add-ns port prefix uri-str namespaces)
    (and (equal? "" uri-str)
	 (parser-error port "[dt-NSName] broken for " prefix))
    (let ((uri-symbol (ssax:uri-string->symbol uri-str)))
      (let loop ((nss namespaces))
	(cond
	 ((null? nss)
	  (cons (cons* prefix uri-symbol uri-symbol) namespaces))
	 ((eq? uri-symbol (cddar nss))
	  (cons (cons* prefix (cadar nss) uri-symbol) namespaces))
	 (else (loop (cdr nss)))))))

  ; partition attrs into proper attrs and new namespace declarations
  ; return two values: proper attrs and the updated namespace declarations
  (define (adjust-namespace-decl port attrs namespaces)
    (let loop ((attrs attrs) (proper-attrs '()) (namespaces namespaces))
      (cond
       ((null? attrs) (values proper-attrs namespaces))
       ((eq? xmlns (caar attrs))	; re-decl of the default namespace
	(loop (cdr attrs) proper-attrs
	      (if (equal? "" (cdar attrs))	; un-decl of the default ns
		  (cons (cons* '*DEFAULT* #f #f) namespaces)
		  (add-ns port '*DEFAULT* (cdar attrs) namespaces))))
       ((and (pair? (caar attrs)) (eq? xmlns (caaar attrs)))
	(loop (cdr attrs) proper-attrs
	      (add-ns port (cdaar attrs) (cdar attrs) namespaces)))
       (else
	(loop (cdr attrs) (cons (car attrs) proper-attrs) namespaces)))))

    ; The body of the function
 (lambda (tag-head port elems entities namespaces)
  (let*-values
   (((attlist) (ssax:read-attributes port entities))
    ((empty-el-tag?)
     (begin
       (ssax:skip-S port)
       (and
	(eqv? #\/
	      (assert-curr-char '(#\> #\/) "XML [40], XML [44], no '>'" port))
	(assert-curr-char '(#\>) "XML [44], no '>'" port))))
    ((elem-content decl-attrs)	; see xml-decl for their type
     (if elems			; elements declared: validate!
	 (cond
	  ((assoc tag-head elems) =>
	   (lambda (decl-elem)		; of type xml-decl::decl-elem
	     (values
	      (if empty-el-tag? 'EMPTY-TAG (cadr decl-elem))
	      (caddr decl-elem))))
	  (else
	   (parser-error port "[elementvalid] broken, no decl for " tag-head)))
	 (values		; non-validating parsing
	  (if empty-el-tag? 'EMPTY-TAG 'ANY)
	  #f)			; no attributes declared
	 ))
    ((merged-attrs) (if decl-attrs (validate-attrs port attlist decl-attrs)
		      (attlist->alist attlist)))
    ((proper-attrs namespaces)
     (let*-values
	 (((pas nss) (adjust-namespace-decl port merged-attrs namespaces)))
       (values (if (ssax:current-resolve-namespaces)
		 pas
		 merged-attrs)
	       namespaces))))
   ;(cerr "proper attrs: " proper-attrs nl)
   ; build the return value
   (values
    (ssax:resolve-name port tag-head namespaces #t)
    (fold-right
     (lambda (name-value attlist)
       (or
	(attlist-add attlist
	   (cons (ssax:resolve-name port (car name-value) namespaces #f)
		 (cdr name-value)))
	(parser-error port "[uniqattspec] after NS expansion broken for "
	       name-value)))
     (make-empty-attlist)
     proper-attrs)
    namespaces
    elem-content)))))

(run-test
 (let* ((urn-a (string->symbol "urn:a"))
	(urn-b (string->symbol "urn:b"))
	(urn-html (string->symbol "http://w3c.org/html"))
	(namespaces
	 `((#f '"UHTML" . ,urn-html)
	   ('"A"  '"UA" . ,urn-a)))
	  (test
	   (lambda (tag-head-name elems str)
	     (call-with-input-string str
		(lambda (port)
		  (call-with-values
		      (lambda ()
			      (ssax:complete-start-tag
			       (call-with-input-string tag-head-name
				      (lambda (port) (ssax:read-QName port)))
			       port
			       elems '() namespaces))
		    list))))))

   ; First test with no validation of elements
   ;(test "TAG1" #f "")
   (assert (equal? `('"TAG1" () ,namespaces ANY)
		   (test "TAG1" #f ">")))
   (assert (equal? `('"TAG1" () ,namespaces EMPTY-TAG)
		   (test "TAG1" #f "/>")))
   (assert (equal? `('"TAG1" (('"HREF" . "a")) ,namespaces EMPTY-TAG)
		   (test "TAG1" #f "HREF='a'/>")))
   (assert (equal? `(('"UA" . '"TAG1") (('"HREF" . "a"))
		     ,(cons `(*DEFAULT* '"UA" . ,urn-a) namespaces) ANY)
		   (test "TAG1" #f "HREF='a' xmlns='urn:a'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "a"))
		     ,(cons '(*DEFAULT* #f . #f) namespaces) ANY)
		   (test "TAG1" #f "HREF='a' xmlns=''>")))
   (assert (failed? (test "UA:TAG1" #f "HREF='a' xmlns=''/>")))
   (assert (equal? `(('"UA" . '"TAG1") ((('"UA" . '"HREF") . "a"))
		     ,(cons '(*DEFAULT* #f . #f) namespaces) ANY)
		   (test "A:TAG1" #f "A:HREF='a' xmlns=''>")))
   (assert (equal? `(('"UA" . '"TAG1") ((('"UA" . '"HREF") . "a"))
		     ,(cons `(*DEFAULT* ,urn-b . ,urn-b) namespaces) ANY)
		   (test "A:TAG1" #f "A:HREF='a' xmlns='urn:b'>")))
   (assert (failed? (test "B:TAG1" #f "A:HREF='a' xmlns:b=''/>")))
   (assert (equal? `((,urn-b . '"TAG1") ((('"UA" . '"HREF") . "a"))
		     ,(cons `('"B" ,urn-b . ,urn-b) namespaces) ANY)
		   (test "B:TAG1" #f "A:HREF='a' xmlns:B='urn:b'>")))
   (assert (equal? `((,urn-b . '"TAG1") ((('"UA" . '"HREF") . "a")
					 ((,urn-b . '"SRC") . "b"))
		     ,(cons `('"B" ,urn-b . ,urn-b) namespaces) ANY)
		   (test "B:TAG1" #f
			 "B:SRC='b' A:HREF='a' xmlns:B='urn:b'>")))
   (assert (equal? `((,urn-b . '"TAG1") ((('"UA" . '"HREF") . "a")
					 ((,urn-b . '"HREF") . "b"))
			  ,(cons `('"B" ,urn-b . ,urn-b) namespaces) ANY)
		   (test "B:TAG1" #f
			 "B:HREF=\"b\" A:HREF='a' xmlns:B='urn:b'>")))
   ; must be an error! Duplicate attr
   (assert (failed? (test "B:TAG1" #f
			  "HREF=\"b\" HREF='a' xmlns:B='urn:a'/>")))
   ; must be an error! Duplicate attr after ns expansion
   (assert (failed? (test "B:TAG1" #f
			  "B:HREF=\"b\" A:HREF='a' xmlns:B='urn:a'/>")))
   (assert (equal? `(('"UA" . '"TAG1") (('"HREF" . "a")
					(('"UA" . '"HREF") . "b"))
		     ,(cons `(*DEFAULT* '"UA" . ,urn-a) namespaces) ANY)
		   (test "TAG1" #f
			 "A:HREF=\"b\" HREF='a' xmlns='urn:a'>")))
   (assert (equal? `('"TAG1" ((('"UHTML" . '"HREF") . "a")
			      ((,urn-b . '"HREF") . "b"))
		     ,(append `(
			 ('"HTML" '"UHTML" . ,urn-html)
			 ('"B" ,urn-b . ,urn-b))
			      namespaces) ANY)
		   (test "TAG1" #f
			 "B:HREF=\"b\" xmlns:B='urn:b' xmlns:HTML='http://w3c.org/html' HTML:HREF='a' >")))

   ; Now test the validating parsing
   ; No decl for tag1
   (assert (failed? (test "TAG1" '((TAG2 ANY ()))
			  "B:HREF='b' xmlns:B='urn:b'>")))
   ; No decl for HREF elem
;;   (cond-expand
;;    ((not (or scm mit-scheme))	; Regretfully, SCM treats '() as #f
;;     (assert (failed?
;;	      (test "TAG1" '(('"TAG1" ANY ()))
;;		    "B:HREF='b' xmlns:B='urn:b'>"))))
;;    (else #t))
   ; No decl for HREF elem
   (assert (failed?
	    (test "TAG1" '(('"TAG1" ANY (('"HREF1" CDATA IMPLIED #f))))
	    "B:HREF='b' xmlns:B='urn:b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces EMPTY-TAG)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f))))
	     "HREF='b'/>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f))))
	     "HREF='b'>")))
   ; Req'd attribute not given error
   (assert (failed?
	    (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f))))
		  ">")))
   ; Wrong content-type of the attribute
   (assert (failed?
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" ("c") REQUIRED #f))))
	     "HREF='b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" ("c" "b") IMPLIED #f))))
	     "HREF='b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA IMPLIED "c"))))
	     "HREF='b'>")))
   ; Bad fixed attribute
   (assert (failed?
	 (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA FIXED "c"))))
	       "HREF='b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA FIXED "b"))))
	     "HREF='b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA FIXED "b")))) ">")))
   (assert (equal? `('"TAG1" (('"HREF" . "b")) ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA IMPLIED "b")))) ">")))
   (assert (equal? `('"TAG1" () ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA IMPLIED #f)))) ">")))
   ; Undeclared attr
   (assert (failed?
	(test "TAG1"
	      '(('"TAG1" PCDATA ((('"A" . '"HREF") CDATA IMPLIED "c"))))
	      "HREF='b'>")))
   (assert (equal? `('"TAG1" (('"HREF" . "b") (('"UA" . '"HREF") . "c"))
			  ,namespaces PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f)
				       (('"A" . '"HREF") CDATA IMPLIED "c"))))
	     "HREF='b'>")))
   (assert (equal? `(('"UA" . '"TAG1")
		     (('"HREF" . "b") (('"UA" . '"HREF") . "c"))
		     ,namespaces PCDATA)
       (test "A:TAG1" '((('"A" . '"TAG1") PCDATA
			 (('"HREF" NMTOKEN REQUIRED #f)
			  (('"A" . '"HREF") CDATA IMPLIED "c"))))
	     "HREF='b'>")))
   (assert (equal? `((,urn-b . '"TAG1") (('"HREF" . "b"))
		     ,(cons `('"B" ,urn-b . ,urn-b) namespaces) PCDATA)
       (test "B:TAG1" '((('"B" . '"TAG1") PCDATA (('"HREF" CDATA REQUIRED #f)
			   (('"xmlns" . '"B") CDATA IMPLIED "urn:b"))))
	     "HREF='b'>")))
   (assert (equal? `((,urn-b . '"TAG1") (((,urn-b . '"HREF") . "b"))
			  ,(cons `('"B" ,urn-b . ,urn-b) namespaces) PCDATA)
       (test "B:TAG1" '((('"B" . '"TAG1") PCDATA
			 ((('"B" . '"HREF") CDATA REQUIRED #f)
			  (('"xmlns" . '"B") CDATA IMPLIED "urn:b"))))
	     "B:HREF='b'>")))
   (assert (equal? `((,urn-b . '"TAG1") (('"HREF" . "b"))
		     ,(cons `(*DEFAULT* ,urn-b . ,urn-b) namespaces) PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f)
			   ('"xmlns" CDATA IMPLIED "urn:b"))))
	     "HREF='b'>")))
   ; xmlns not declared
   (assert (equal? `((,urn-b . '"TAG1") (('"HREF" . "b"))
		     ,(cons `(*DEFAULT* ,urn-b . ,urn-b) namespaces) PCDATA)
       (test "TAG1" '(('"TAG1" PCDATA (('"HREF" CDATA REQUIRED #f)
			   )))
	     "HREF='b' xmlns='urn:b'>")))
   ; xmlns:B not declared
   (assert (equal? `((,urn-b . '"TAG1") (((,urn-b . '"HREF") . "b"))
		     ,(cons `('"B" ,urn-b . ,urn-b) namespaces) PCDATA)
       (test "B:TAG1" '((('"B" . '"TAG1") PCDATA
			 ((('"B" . '"HREF") CDATA REQUIRED #f)
			   )))
	     "B:HREF='b' xmlns:B='urn:b'>")))
))

; procedure+:	ssax:read-external-id PORT
;
; This procedure parses an ExternalID production:
; [75] ExternalID ::= 'SYSTEM' S SystemLiteral
;		| 'PUBLIC' S PubidLiteral S SystemLiteral
; [11] SystemLiteral ::= ('"' [^"]* '"') | ("'" [^']* "'")
; [12] PubidLiteral ::=  '"' PubidChar* '"' | "'" (PubidChar - "'")* "'"
; [13] PubidChar ::=  #x20 | #xD | #xA | [a-zA-Z0-9]
;                         | [-'()+,./:=?;!*#@$_%]
;
; This procedure is supposed to be called when an ExternalID is expected;
; that is, the current character must be either #\S or #\P that start
; correspondingly a SYSTEM or PUBLIC token. This procedure returns the
; SystemLiteral as a string. A PubidLiteral is disregarded if present.

(define (ssax:read-external-id port)
  (let ((discriminator (ssax:read-NCName port)))
    (assert-curr-char ssax:S-chars "space after SYSTEM or PUBLIC" port)
    (ssax:skip-S port)
    (let ((delimiter
          (assert-curr-char '(#\' #\" ) "XML [11], XML [12]" port)))
      (cond
        ((eq? discriminator (string->symbol "SYSTEM"))
          (begin0
            (next-token '() (list delimiter) "XML [11]" port)
            (read-char port)	; reading the closing delim
            ))
         ((eq? discriminator (string->symbol "PUBLIC"))
           (skip-until (list delimiter) port)
           (assert-curr-char ssax:S-chars "space after PubidLiteral" port)
           (ssax:skip-S port)
           (let* ((delimiter
                  (assert-curr-char '(#\' #\" ) "XML [11]" port))
                  (systemid
                    (next-token '() (list delimiter) "XML [11]" port)))
                (read-char port)	; reading the closing delim
                systemid))
         (else
           (parser-error port "XML [75], " discriminator
		  " rather than SYSTEM or PUBLIC"))))))


;-----------------------------------------------------------------------------
;			Higher-level parsers and scanners
;
; They parse productions corresponding to the whole (document) entity
; or its higher-level pieces (prolog, root element, etc).


; Scan the Misc production in the context
; [1]  document ::=  prolog element Misc*
; [22] prolog ::= XMLDecl? Misc* (doctypedec l Misc*)?
; [27] Misc ::= Comment | PI |  S
;
; The following function should be called in the prolog or epilog contexts.
; In these contexts, whitespaces are completely ignored.
; The return value from ssax:scan-Misc is either a PI-token,
; a DECL-token, a START token, or EOF.
; Comments are ignored and not reported.

(define (ssax:scan-Misc port)
  (let loop ((c (ssax:skip-S port)))
    (cond
      ((eof-object? c) c)
      ((not (char=? c #\<))
        (parser-error port "XML [22], char '" c "' unexpected"))
      (else
        (let ((token (ssax:read-markup-token port)))
          (case (xml-token-kind token)
            ((COMMENT) (loop (ssax:skip-S port)))
            ((PI DECL START) token)
            (else
              (parser-error port "XML [22], unexpected token of kind "
		     (xml-token-kind token)
		     ))))))))

; procedure+:	ssax:read-char-data PORT EXPECT-EOF? STR-HANDLER SEED
;
; This procedure is to read the character content of an XML document
; or an XML element.
; [43] content ::=
;	(element | CharData | Reference | CDSect | PI
; 	| Comment)*
; To be more precise, the procedure reads CharData, expands CDSect
; and character entities, and skips comments. The procedure stops
; at a named reference, EOF, at the beginning of a PI or a start/end tag.
;
; port
;	a PORT to read
; expect-eof?
;	a boolean indicating if EOF is normal, i.e., the character
;	data may be terminated by the EOF. EOF is normal
;	while processing a parsed entity.
; str-handler
;	a STR-HANDLER
; seed
;	an argument passed to the first invocation of STR-HANDLER.
;
; The procedure returns two results: SEED and TOKEN.
; The SEED is the result of the last invocation of STR-HANDLER, or the
; original seed if STR-HANDLER was never called.
;
; TOKEN can be either an eof-object (this can happen only if
; expect-eof? was #t), or:
;     - an xml-token describing a START tag or an END-tag;
;	For a start token, the caller has to finish reading it.
;     - an xml-token describing the beginning of a PI. It's up to an
;	application to read or skip through the rest of this PI;
;     - an xml-token describing a named entity reference.
;
; CDATA sections and character references are expanded inline and
; never returned. Comments are silently disregarded.
;
; As the XML Recommendation requires, all whitespace in character data
; must be preserved. However, a CR character (#xD) must be disregarded
; if it appears before a LF character (#xA), or replaced by a #xA character
; otherwise. See Secs. 2.10 and 2.11 of the XML Recommendation. See also
; the canonical XML Recommendation.

	; ssax:read-char-data port expect-eof? str-handler seed
(define ssax:read-char-data
 (let
     ((terminators-usual (list #\< #\& char-return))
      (terminators-usual-eof (list #\< '*eof* #\& char-return))

      (handle-fragment
       (lambda (fragment str-handler seed)
	 (if (string-null? fragment) seed
	     (str-handler fragment "" seed))))
      )

   (lambda (port expect-eof? str-handler seed)

     ; Very often, the first character we encounter is #\<
     ; Therefore, we handle this case in a special, fast path
     (if (eqv? #\< (peek-char port))

         ; The fast path
	 (let ((token (ssax:read-markup-token port)))
	   (case (xml-token-kind token)
	     ((START END)	; The most common case
	      (values seed token))
	     ((CDSECT)
	      (let ((seed (ssax:read-cdata-body port str-handler seed)))
		(ssax:read-char-data port expect-eof? str-handler seed)))
	     ((COMMENT) (ssax:read-char-data port expect-eof?
					     str-handler seed))
	     (else
	      (values seed token))))


         ; The slow path
	 (let ((char-data-terminators
		(if expect-eof? terminators-usual-eof terminators-usual)))

	   (let loop ((seed seed))
	     (let* ((fragment
		     (next-token '() char-data-terminators
				 "reading char data" port))
		    (term-char (peek-char port)) ; one of char-data-terminators
		    )
	       (if (eof-object? term-char)
		   (values
		    (handle-fragment fragment str-handler seed)
		    term-char)
		   (case term-char
		     ((#\<)
		      (let ((token (ssax:read-markup-token port)))
			(case (xml-token-kind token)
			  ((CDSECT)
			   (loop
			    (ssax:read-cdata-body port str-handler
			        (handle-fragment fragment str-handler seed))))
			  ((COMMENT)
			   (loop (handle-fragment fragment str-handler seed)))
			  (else
			   (values
			    (handle-fragment fragment str-handler seed)
			    token)))))
		     ((#\&)
		      (case (peek-next-char port)
			((#\#) (read-char port)
			 (loop (str-handler fragment
				       (string (ssax:read-char-ref port))
				       seed)))
			(else
			 (let ((name (ssax:read-NCName port)))
			   (assert-curr-char '(#\;) "XML [68]" port)
			   (values
			    (handle-fragment fragment str-handler seed)
			    (make-xml-token 'ENTITY-REF name))))))
		     (else		; This must be a CR character
		      (if (eqv? (peek-next-char port) #\newline)
			  (read-char port))
		      (loop (str-handler fragment (string #\newline) seed))))
		   ))))))))


; a few lines of validation code
(run-test (letrec
  ((a-tag (make-xml-token 'START (string->symbol "BR")))
   (a-ref (make-xml-token 'ENTITY-REF (string->symbol "lt")))
   (eof-object (lambda () eof-object)) ; a unique value
   (str-handler (lambda (fragment foll-fragment seed)
     (if (string-null? foll-fragment) (cons fragment seed)
	 (cons* foll-fragment fragment seed))))
   (test (lambda (str expect-eof? expected-data expected-token)
	   (newline) (display "body: ") (write str)
	   (newline) (display "Result: ")
	  (let*-values
	   (((seed token)
	     (call-with-input-string (unesc-string str)
		(lambda (port)
		 (ssax:read-char-data port expect-eof? str-handler '()))))
	    ((result) (reverse seed)))
	   (write result)
	   (display " ")
	   (display token)
	   (assert (equal? result (map unesc-string expected-data))
	           (if (eq? expected-token eof-object)
		     (eof-object? token)
		     (equal? token expected-token))))))
   )
  (test "" #t '() eof-object)
  (assert (failed? (test "" #f '() eof-object)))
  (test "  " #t '("  ") eof-object)
  (test "<BR/>" #f '() a-tag)
  (test " <BR  />" #f '(" ") a-tag)

  (test " &lt;" #f '(" ") a-ref)
  (test " a&lt;" #f '(" a") a-ref)
  (test " a &lt;" #f '(" a ") a-ref)

  (test " <!-- comment--> a  a<BR/>" #f '(" " " a  a") a-tag)
  (test " <!-- comment-->%ra  a<BR/>" #f '(" " "" "%n" "a  a") a-tag)
  (test " <!-- comment-->%r%na  a<BR/>" #f '(" " "" "%n" "a  a") a-tag)
  (test " <!-- comment-->%r%na%t%r%r%na<BR/>" #f
	'(" " "" "%n" "a%t" "%n" "" "%n" "a") a-tag)
  (test "a<!-- comment--> a  a<BR/>" #f '("a" " a  a") a-tag)
  (test "&#x21;<BR/>" #f '("" "!") a-tag)
  (test "&#x21;%n<BR/>" #f '("" "!" "%n") a-tag)
  (test "%t&#x21;%n<BR/>" #f '("%t" "!" "%n") a-tag)
  (test "%t&#x21;%na a<BR/>" #f '("%t" "!" "%na a") a-tag)
  (test "%t&#x21;%ra a<BR/>" #f '("%t" "!" "" "%n" "a a") a-tag)
  (test "%t&#x21;%r%na a<BR/>" #f '("%t" "!" "" "%n" "a a") a-tag)

  (test " %ta &#x21;   b <BR/>" #f '(" %ta " "!" "   b ") a-tag)
  (test " %ta &#x20;   b <BR/>" #f '(" %ta " " " "   b ") a-tag)

  (test "<![CDATA[<]]><BR/>" #f '("<") a-tag)
  (test "<![CDATA[]]]><BR/>" #f '("]") a-tag)
  (test "%t<![CDATA[<]]><BR/>" #f '("%t" "<") a-tag)
  (test "%t<![CDATA[<]]>a b<BR/>" #f '("%t" "<" "a b") a-tag)
  (test "%t<![CDATA[<]]>  a b<BR/>" #f '("%t" "<" "  a b") a-tag)

  (test "%td <![CDATA[  <%r%r%n]]>  a b<BR/>" #f
	'("%td " "  <" "%n" "" "%n" "  a b") a-tag)
))



; procedure+:	ssax:assert-token TOKEN KIND GI
; Make sure that TOKEN is of anticipated KIND and has anticipated GI
; Note GI argument may actually be a pair of two symbols, Namespace
; URI or the prefix, and of the localname.
; If the assertion fails, error-cont is evaluated by passing it
; three arguments: token kind gi. The result of error-cont is returned.
(define (ssax:assert-token token kind gi error-cont)
  (or
    (and (xml-token? token)
      (eq? kind (xml-token-kind token))
      (equal? gi (xml-token-head token)))
    (error-cont token kind gi)))

;========================================================================
;		Highest-level parsers: XML to SXML

; These parsers are a set of syntactic forms to instantiate a SSAX parser.
; A user can instantiate the parser to do the full validation, or
; no validation, or any particular validation. The user specifies
; which PI he wants to be notified about. The user tells what to do
; with the parsed character and element data. The latter handlers
; determine if the parsing follows a SAX or a DOM model.

; syntax: ssax:make-pi-parser my-pi-handlers
; Create a parser to parse and process one Processing Element (PI).

; my-pi-handlers
;	An assoc list of pairs (PI-TAG . PI-HANDLER)
;	where PI-TAG is an NCName symbol, the PI target, and
;	PI-HANDLER is a procedure PORT PI-TAG SEED
;	where PORT points to the first symbol after the PI target.
;	The handler should read the rest of the PI up to and including
;	the combination '?>' that terminates the PI. The handler should
;	return a new seed.
;	One of the PI-TAGs may be the symbol *DEFAULT*. The corresponding
;	handler will handle PIs that no other handler will. If the
;	*DEFAULT* PI-TAG is not specified, ssax:make-pi-parser will assume
;	the default handler that skips the body of the PI
;
; The output of the ssax:make-pi-parser is a procedure
;	PORT PI-TAG SEED
; that will parse the current PI according to the user-specified handlers.
;
; The previous version of ssax:make-pi-parser was a low-level macro:
; (define-macro ssax:make-pi-parser
;   (lambda (my-pi-handlers)
;   `(lambda (port target seed)
;     (case target
; 	; Generate the body of the case statement
;       ,@(let loop ((pi-handlers my-pi-handlers) (default #f))
; 	 (cond
; 	  ((null? pi-handlers)
; 	   (if default `((else (,default port target seed)))
; 	       '((else
; 		  (ssax:warn port "Skipping PI: " target nl)
; 		  (ssax:skip-pi port)
; 		  seed))))
; 	  ((eq? '*DEFAULT* (caar pi-handlers))
; 	   (loop (cdr pi-handlers) (cdar pi-handlers)))
; 	  (else
; 	   (cons
; 	    `((,(caar pi-handlers)) (,(cdar pi-handlers) port target seed))
; 	    (loop (cdr pi-handlers) default)))))))))

(define-syntax ssax:make-pi-parser
  (syntax-rules ()
    ((ssax:make-pi-parser orig-handlers)
     (letrec-syntax
	; Generate the clauses of the case statement
      ((loop
	 (syntax-rules (*DEFAULT*)
	   ((loop () #f accum port target seed) 	; no default
	    (make-case
	      ((else
		 (ssax:warn port "Skipping PI: " target nl)
		 (ssax:skip-pi port)
		 seed)
		. accum)
	      () target))
	   ((loop () default accum port target seed)
	    (make-case
	      ((else (default port target seed)) . accum)
	      () target))
	   ((loop ((*DEFAULT* . default) . handlers) old-def accum
	      port target seed)
	    (loop handlers default accum port target seed))
	   ((loop ((tag . handler) . handlers) default accum port target seed)
	    (loop handlers default
	      (((tag) (handler port target seed)) . accum)
	      port target seed))
	   ))
	(make-case 			; Reverse the clauses, make the 'case'
	  (syntax-rules ()
	    ((make-case () clauses target)
	     (case target . clauses))
	    ((make-case (clause . clauses) accum target)
	     (make-case clauses (clause . accum) target)))
	  ))
      (lambda (port target seed)
	(loop orig-handlers #f () port target seed))
       ))))

(run-test
 (pp (ssax:make-pi-parser ()))
 (pp (ssax:make-pi-parser ((xml . (lambda (port target seed) seed)))))
 (pp (ssax:make-pi-parser ((xml . (lambda (port target seed) seed))
			   (html . list)
			   (*DEFAULT* . ssax:warn))))
)

; syntax: ssax:make-elem-parser my-new-level-seed my-finish-element
;				my-char-data-handler my-pi-handlers

; Create a parser to parse and process one element, including its
; character content or children elements. The parser is typically
; applied to the root element of a document.

; my-new-level-seed
;	procedure ELEM-GI ATTRIBUTES NAMESPACES EXPECTED-CONTENT SEED
;		where ELEM-GI is a RES-NAME of the element
;		about to be processed.
;	This procedure is to generate the seed to be passed
;	to handlers that process the content of the element.
;	This is the function identified as 'fdown' in the denotational
;	semantics of the XML parser given in the title comments to this
;	file.
;
; my-finish-element
;	procedure ELEM-GI ATTRIBUTES NAMESPACES PARENT-SEED SEED
;	This procedure is called when parsing of ELEM-GI is finished.
;	The SEED is the result from the last content parser (or
;	from my-new-level-seed if the element has the empty content).
;	PARENT-SEED is the same seed as was passed to my-new-level-seed.
;	The procedure is to generate a seed that will be the result
;	of the element parser.
;	This is the function identified as 'fup' in the denotational
;	semantics of the XML parser given in the title comments to this
;	file.
;
; my-char-data-handler
;	A STR-HANDLER
;
; my-pi-handlers
;	See ssax:make-pi-handler above
;

; The generated parser is a
;	procedure START-TAG-HEAD PORT ELEMS ENTITIES
;	NAMESPACES PRESERVE-WS? SEED
; The procedure must be called after the start tag token has been
; read. START-TAG-HEAD is an UNRES-NAME from the start-element tag.
; ELEMS is an instance of xml-decl::elems.
; See ssax:complete-start-tag::preserve-ws?

; Faults detected:
;	VC: XML-Spec.html#elementvalid
;	WFC: XML-Spec.html#GIMatch


(define-syntax ssax:make-elem-parser
  (syntax-rules ()
    ((ssax:make-elem-parser my-new-level-seed my-finish-element
                            my-char-data-handler my-pi-handlers)

   (lambda (start-tag-head port elems entities namespaces
			   preserve-ws? seed)

     (define xml-space-gi (cons ssax:Prefix-XML
				(string->symbol "space")))

     (let handle-start-tag ((start-tag-head start-tag-head)
			    (port port) (entities entities)
			    (namespaces namespaces)
			    (preserve-ws? preserve-ws?) (parent-seed seed))
       (let*-values
	(((elem-gi attributes namespaces expected-content)
	  (ssax:complete-start-tag start-tag-head port elems
				   entities namespaces))
	 ((seed)
	  (my-new-level-seed elem-gi attributes
			      namespaces expected-content parent-seed)))
	(case expected-content
	  ((EMPTY-TAG)
	   (my-finish-element
	    elem-gi attributes namespaces parent-seed seed))
	  ((EMPTY)		; The end tag must immediately follow
	   (ssax:assert-token
	    (and (eqv? #\< (ssax:skip-S port)) (ssax:read-markup-token port))
	    'END  start-tag-head
	    (lambda (token exp-kind exp-head)
	      (parser-error port "[elementvalid] broken for " token
		     " while expecting "
		     exp-kind exp-head)))
	   (my-finish-element
	    elem-gi attributes namespaces parent-seed seed))
	  (else		; reading the content...
	   (let ((preserve-ws?  ; inherit or set the preserve-ws? flag
		  (cond
		   ((assoc xml-space-gi attributes) =>
		    (lambda (name-value)
		      (equal? "preserve" (cdr name-value))))
		   (else preserve-ws?))))
	     (let loop ((port port) (entities entities)
			(expect-eof? #f) (seed seed))
	       (let*-values
		(((seed term-token)
		  (ssax:read-char-data port expect-eof?
				       my-char-data-handler seed)))
		(if (eof-object? term-token)
		    seed
		    (case (xml-token-kind term-token)
		      ((END)
		       (ssax:assert-token term-token 'END  start-tag-head
			  (lambda (token exp-kind exp-head)
			    (parser-error port "[GIMatch] broken for "
				   term-token " while expecting "
				   exp-kind exp-head)))
		       (my-finish-element
			elem-gi attributes namespaces parent-seed seed))
		      ((PI)
		       (let ((seed
			  ((ssax:make-pi-parser my-pi-handlers)
			   port (xml-token-head term-token) seed)))
			 (loop port entities expect-eof? seed)))
		      ((ENTITY-REF)
		       (let ((seed
			      (ssax:handle-parsed-entity
			       port (xml-token-head term-token)
			       entities
			       (lambda (port entities seed)
				 (loop port entities #t seed))
			       my-char-data-handler
			       seed))) ; keep on reading the content after ent
			 (loop port entities expect-eof? seed)))
		      ((START)		; Start of a child element
		       (if (eq? expected-content 'PCDATA)
			   (parser-error port "[elementvalid] broken for "
				  elem-gi
				  " with char content only; unexpected token "
				  term-token))
			   ; Do other validation of the element content
			   (let ((seed
				  (handle-start-tag
				     (xml-token-head term-token)
				     port entities namespaces
				     preserve-ws? seed)))
			     (loop port entities expect-eof? seed)))
		      (else
		       (parser-error port "XML [43] broken for "
				     term-token))))))))
	  )))
))))


; syntax: ssax:make-parser user-handler-tag user-handler-proc ...
;
; Create an XML parser, an instance of the XML parsing framework.
; This will be a SAX, a DOM, or a specialized parser depending
; on the supplied user-handlers.

; user-handler-tag is a symbol that identifies a procedural expression
; that follows the tag. Given below are tags and signatures of the
; corresponding procedures. Not all tags have to be specified. If some
; are omitted, reasonable defaults will apply.
;

; tag: DOCTYPE
; handler-procedure: PORT DOCNAME SYSTEMID INTERNAL-SUBSET? SEED
; If internal-subset? is #t, the current position in the port
; is right after we have read #\[ that begins the internal DTD subset.
; We must finish reading of this subset before we return
; (or must call skip-internal-subset if we aren't interested in reading it).
; The port at exit must be at the first symbol after the whole
; DOCTYPE declaration.
; The handler-procedure must generate four values:
;	ELEMS ENTITIES NAMESPACES SEED
; See xml-decl::elems for ELEMS. It may be #f to switch off the validation.
; NAMESPACES will typically contain USER-PREFIXes for selected URI-SYMBs.
; The default handler-procedure skips the internal subset,
; if any, and returns (values #f '() '() seed)

; tag: UNDECL-ROOT
; handler-procedure: ELEM-GI SEED
; where ELEM-GI is an UNRES-NAME of the root element. This procedure
; is called when an XML document under parsing contains _no_ DOCTYPE
; declaration.
; The handler-procedure, as a DOCTYPE handler procedure above,
; must generate four values:
;	ELEMS ENTITIES NAMESPACES SEED
; The default handler-procedure returns (values #f '() '() seed)

; tag: DECL-ROOT
; handler-procedure: ELEM-GI SEED
; where ELEM-GI is an UNRES-NAME of the root element. This procedure
; is called when an XML document under parsing does contains the DOCTYPE
; declaration.
; The handler-procedure must generate a new SEED (and verify
; that the name of the root element matches the doctype, if the handler
; so wishes).
; The default handler-procedure is the identity function.

; tag: NEW-LEVEL-SEED
; handler-procedure: see ssax:make-elem-parser, my-new-level-seed

; tag: FINISH-ELEMENT
; handler-procedure: see ssax:make-elem-parser, my-finish-element

; tag: CHAR-DATA-HANDLER
; handler-procedure: see ssax:make-elem-parser, my-char-data-handler

; tag: PI
; handler-procedure: see ssax:make-pi-parser
; The default value is '()

; The generated parser is a
;	procedure PORT SEED

; This procedure parses the document prolog and then exits to
; an element parser (created by ssax:make-elem-parser) to handle
; the rest.
;
; [1]  document ::=  prolog element Misc*
; [22] prolog ::= XMLDecl? Misc* (doctypedec | Misc*)?
; [27] Misc ::= Comment | PI |  S
;
; [28] doctypedecl ::=  '<!DOCTYPE' S Name (S ExternalID)? S?
;			('[' (markupdecl | PEReference | S)* ']' S?)? '>'
; [29] markupdecl ::= elementdecl | AttlistDecl
;                      | EntityDecl
;                      | NotationDecl | PI
;                      | Comment
;


; This is ssax:make-parser with all the (specialization) handlers given
; as positional arguments. It is called by ssax:make-parser, see below
(define-syntax ssax:make-parser/positional-args
  (syntax-rules ()
    ((ssax:make-parser/positional-args
       *handler-DOCTYPE
       *handler-UNDECL-ROOT
       *handler-DECL-ROOT
       *handler-NEW-LEVEL-SEED
       *handler-FINISH-ELEMENT
       *handler-CHAR-DATA-HANDLER
       *handler-PI)
  (lambda (port seed)

     ; We must've just scanned the DOCTYPE token
     ; Handle the doctype declaration and exit to
     ; scan-for-significant-prolog-token-2, and eventually, to the
     ; element parser.
     (define (handle-decl port token-head seed)
       (or (eq? (string->symbol "DOCTYPE") token-head)
	   (parser-error port "XML [22], expected DOCTYPE declaration, found "
		  token-head))
       (assert-curr-char ssax:S-chars "XML [28], space after DOCTYPE" port)
       (ssax:skip-S port)
       (let*-values
	(((docname) (ssax:read-QName port))
	 ((systemid)
	  (and (ssax:ncname-starting-char? (ssax:skip-S port))
	       (ssax:read-external-id port)))
	 ((internal-subset?)
	  (begin (ssax:skip-S port)
	    (eqv? #\[ (assert-curr-char '(#\> #\[)
					"XML [28], end-of-DOCTYPE" port))))
	 ((elems entities namespaces seed)
	  (*handler-DOCTYPE port docname systemid
			    internal-subset? seed))
	 )
	(scan-for-significant-prolog-token-2 port elems entities namespaces
					     seed)))


     ; Scan the leading PIs until we encounter either a doctype declaration
     ; or a start token (of the root element)
     ; In the latter two cases, we exit to the appropriate continuation
     (define (scan-for-significant-prolog-token-1 port seed)
       (let ((token (ssax:scan-Misc port)))
	 (if (eof-object? token)
	     (parser-error port "XML [22], unexpected EOF")
	     (case (xml-token-kind token)
	       ((PI)
		(let ((seed
		       ((ssax:make-pi-parser *handler-PI)
			port (xml-token-head token) seed)))
		  (scan-for-significant-prolog-token-1 port seed)))
	       ((DECL) (handle-decl port (xml-token-head token) seed))
	       ((START)
		(let*-values
		 (((elems entities namespaces seed)
		   (*handler-UNDECL-ROOT (xml-token-head token) seed)))
		 (element-parser (xml-token-head token) port elems
				 entities namespaces #f seed)))
	       (else (parser-error port "XML [22], unexpected markup "
				   token))))))


     ; Scan PIs after the doctype declaration, till we encounter
     ; the start tag of the root element. After that we exit
     ; to the element parser
     (define (scan-for-significant-prolog-token-2 port elems entities
						  namespaces seed)
       (let ((token (ssax:scan-Misc port)))
	 (if (eof-object? token)
	     (parser-error port "XML [22], unexpected EOF")
	     (case (xml-token-kind token)
	       ((PI)
		(let ((seed
		       ((ssax:make-pi-parser *handler-PI)
			port (xml-token-head token) seed)))
		  (scan-for-significant-prolog-token-2 port elems entities
						       namespaces seed)))
	       ((START)
		(element-parser (xml-token-head token) port elems
		  entities namespaces #f
		  (*handler-DECL-ROOT (xml-token-head token) seed)))
	       (else (parser-error port "XML [22], unexpected markup "
				   token))))))


     ; A procedure start-tag-head port elems entities namespaces
     ;		 preserve-ws? seed
     (define element-parser
       (ssax:make-elem-parser *handler-NEW-LEVEL-SEED
			      *handler-FINISH-ELEMENT
			      *handler-CHAR-DATA-HANDLER
			      *handler-PI))

     ; Get the ball rolling ...
     (scan-for-significant-prolog-token-1 port seed)
))))



; The following meta-macro turns a regular macro (with positional
; arguments) into a form with keyword (labeled) arguments.  We later
; use the meta-macro to convert ssax:make-parser/positional-args into
; ssax:make-parser. The latter provides a prettier (with labeled
; arguments and defaults) interface to
; ssax:make-parser/positional-args
;
; ssax:define-labeled-arg-macro LABELED-ARG-MACRO-NAME
;		(POS-MACRO-NAME ARG-DESCRIPTOR ...)
; expands into the definition of a macro
;	LABELED-ARG-MACRO-NAME KW-NAME KW-VALUE KW-NAME1 KW-VALUE1 ...
; which, in turn, expands into
;	POS-MACRO-NAME ARG1 ARG2 ...
; where each ARG1 etc. comes either from KW-VALUE or from
; the deafult part of ARG-DESCRIPTOR. ARG1 corresponds to the first
; ARG-DESCRIPTOR, ARG2 corresponds to the second descriptor, etc.
; Here ARG-DESCRIPTOR describes one argument of the positional macro.
; It has the form
;	(ARG-NAME DEFAULT-VALUE)
; or
;	(ARG-NAME)
; In the latter form, the default value is not given, so that the invocation of
; LABELED-ARG-MACRO-NAME must mention the corresponding parameter.
; ARG-NAME can be anything: an identifier, a string, or even a number.


(define-syntax ssax:define-labeled-arg-macro
  (syntax-rules ()
    ((ssax:define-labeled-arg-macro
       labeled-arg-macro-name
       (positional-macro-name
	 (arg-name . arg-def) ...))
      (define-syntax labeled-arg-macro-name
	(syntax-rules ()
	  ((labeled-arg-macro-name . kw-val-pairs)
	    (letrec-syntax
	      ((find
		 (syntax-rules (arg-name ...)
		   ((find k-args (arg-name . default) arg-name
		      val . others)	   ; found arg-name among kw-val-pairs
		    (next val . k-args)) ...
		   ((find k-args key arg-no-match-name val . others)
		     (find k-args key . others))
		   ((find k-args (arg-name default)) ; default must be here
		     (next default . k-args)) ...
		   ))
		(next			; pack the continuation to find
		  (syntax-rules ()
		    ((next val vals key . keys)
		      (find ((val . vals) . keys) key . kw-val-pairs))
		    ((next val vals)	; processed all arg-descriptors
		      (rev-apply (val) vals))))
		(rev-apply
		  (syntax-rules ()
		    ((rev-apply form (x . xs))
		      (rev-apply (x . form) xs))
		    ((rev-apply form ()) form))))
	      (next positional-macro-name ()
		(arg-name . arg-def) ...))))))))


; The definition of ssax:make-parser
(ssax:define-labeled-arg-macro ssax:make-parser
  (ssax:make-parser/positional-args
    (DOCTYPE
      (lambda (port docname systemid internal-subset? seed)
	(when internal-subset?
	  (ssax:warn port "Internal DTD subset is not currently handled ")
	  (ssax:skip-internal-dtd port))
	(ssax:warn port "DOCTYPE DECL " docname " "
	  systemid " found and skipped")
	(values #f '() '() seed)
	))
    (UNDECL-ROOT
      (lambda (elem-gi seed) (values #f '() '() seed)))
    (DECL-ROOT
      (lambda (elem-gi seed) seed))
    (NEW-LEVEL-SEED)		; required
    (FINISH-ELEMENT)		; required
    (CHAR-DATA-HANDLER)		; required
    (PI ())
    ))

(run-test
 (letrec ((simple-parser
	   (lambda (str doctype-fn)
	     (call-with-input-string str
		 (lambda (port)
		   ((ssax:make-parser
		     NEW-LEVEL-SEED
		     (lambda (elem-gi attributes namespaces
				      expected-content seed)
		       '())

		     FINISH-ELEMENT
		     (lambda (elem-gi attributes namespaces parent-seed seed)
		       (let
			   ((seed (if (null? namespaces) (reverse seed)
				      (cons (list '*NAMESPACES* namespaces)
					    (reverse seed)))))
			 (let ((seed (if (attlist-null? attributes) seed
					 (cons
					  (cons '@
					   (map (lambda (attr)
					      (list (car attr) (cdr attr)))
						(attlist->alist attributes)))
					  seed))))
			   (cons (cons elem-gi seed) parent-seed))))

		     CHAR-DATA-HANDLER
		     (lambda (string1 string2 seed)
		       (if (string-null? string2) (cons string1 seed)
			   (cons* string2 string1 seed)))

		     DOCTYPE
		     (lambda (port docname systemid internal-subset? seed)
		       (when internal-subset?
			  (ssax:warn port
			    "Internal DTD subset is not currently handled ")
			  (ssax:skip-internal-dtd port))
		       (ssax:warn port "DOCTYPE DECL " docname " "
			     systemid " found and skipped")
		       (doctype-fn docname seed))

		     UNDECL-ROOT
		     (lambda (elem-gi seed)
		       (doctype-fn elem-gi seed))
		     )
		    port '())))))

	  (dummy-doctype-fn (lambda (elem-gi seed) (values #f '() '() seed)))
	  (test
	   (lambda (str doctype-fn expected)
	     (cout nl "Parsing: " str nl)
	     (let ((result (simple-parser (unesc-string str) doctype-fn)))
	       (write result)
	       (assert (equal? result expected)))))
	  )

   (test "<BR/>" dummy-doctype-fn '(('"BR")))
   (assert (failed? (test "<BR>" dummy-doctype-fn '())))
   (test "<BR></BR>" dummy-doctype-fn '(('"BR")))
   (assert (failed? (test "<BR></BB>" dummy-doctype-fn '())))

   (test "   <A HREF='URL'> link <I>itlink </I> &amp;amp;</A>"
	 dummy-doctype-fn
	 '(('"A" (@ ('"HREF" "URL")) " link " ('"I" "itlink ")
	    " " "&" "amp;")))

   (test
      "   <A HREF='URL' xml:space='preserve'> link <I>itlink </I> &amp;amp;</A>" dummy-doctype-fn
      '(('"A" (@ ('"HREF" "URL") (('"xml" . '"space") "preserve"))
	   " link " ('"I" "itlink ") " " "&" "amp;")))

   (test "   <A HREF='URL' xml:space='preserve'> link <I xml:space='default'>itlink </I> &amp;amp;</A>" dummy-doctype-fn
	 '(('"A" (@ ('"HREF" "URL") (('"xml" . '"space") "preserve"))
	      " link "
	      ('"I" (@ (('"xml" . '"space") "default")) "itlink ")
	      " " "&" "amp;")))
   (test "<itemize><item>This   is item 1 </item>%n<!-- Just:a comment --><item>Item 2</item>%n </itemize>" dummy-doctype-fn
	 `(('"itemize" ('"item" "This   is item 1 ")
	    ,(unesc-string "%n") ('"item" "Item 2") ,(unesc-string "%n "))))
  (test " <P><![CDATA[<BR>%n<![CDATA[<BR>]]&gt;]]></P>"
	dummy-doctype-fn  `(('"P" "<BR>" ,nl "<![CDATA[<BR>" "]]" "" ">")))

  (test " <P><![CDATA[<BR>%r<![CDATA[<BR>]]&gt;]]></P>"
	dummy-doctype-fn `(('"P" "<BR>" ,nl "<![CDATA[<BR>" "]]" "" ">")))

  (test "<?xml version='1.0'?>%n%n<Reports TStamp='1'></Reports>"
	dummy-doctype-fn '(('"Reports" (@ ('"TStamp" "1")))))
  (test "%n<?PI xxx?><!-- Comment %n -%r-->%n<?PI1 zzz?><T/>"
	dummy-doctype-fn '(('"T")))
  (test "<!DOCTYPE T SYSTEM 'system1' ><!-- comment -->%n<T/>"
	(lambda (elem-gi seed) (assert (equal? elem-gi ''"T"))
		(values #f '() '() seed))
	'(('"T")))
  (test "<!DOCTYPE T PUBLIC '//EN/T' \"system1\" [ <!ELEMENT a 'aa'> ]>%n<?pi?><T/>"
	(lambda (elem-gi seed) (assert (equal? elem-gi ''"T"))
		(values #f '() '() seed))
	'(('"T")))
  (test "<BR/>"
	(lambda (elem-gi seed)
	  (values '(('"BR" EMPTY ())) '() '() seed)) '(('"BR")))
  (test "<BR></BR>"
	(lambda (elem-gi seed)
	  (values '(('"BR" EMPTY ())) '() '() seed)) '(('"BR")))
  (assert (failed? (test "<BR>aa</BR>"
	(lambda (elem-gi seed)
	  (values '(('"BR" EMPTY ())) '() '() seed)) '())))
  (test "<BR>aa</BR>"
	(lambda (elem-gi seed)
	  (values '(('"BR" PCDATA ())) '() '() seed)) '(('"BR" "aa")))
  (assert (failed? (test "<BR>a<I>a</I></BR>"
	(lambda (elem-gi seed)
	  (values '(('"BR" PCDATA ())) '() '() seed)) '())))
  (test "<BR>a<I>a</I></BR>"
	(lambda (elem-gi seed)
	  (values '(('"BR" ANY ()) ('"I" PCDATA ())) '() '() seed))
	  '(('"BR" "a" ('"I" "a"))))


  (test "<DIV>Example: \"&example;\"</DIV>"
	(lambda (elem-gi seed)
	  (values #f '((example . "<P>An    ampersand (&#38;) may   be escaped numerically (&#38;#38;) or with a general entity (&amp;amp;).</P>")) '() seed))
	'(('"DIV" "Example: \""
	   ('"P" "An    ampersand (" "&" ") may   be escaped numerically (" "&" "#38;) or with a general entity (" "&" "amp;).") "\"")))
 (test "<DIV>Example: \"&example;\" <P/></DIV>"
	(lambda (elem-gi seed)
	  (values #f '(('"quote" . "<I>example:</I> ex")
		       ('"example" . "<Q>&quote;!</Q>?")) '() seed))
	  '(('"DIV" "Example: \"" ('"Q" ('"I" "example:") " ex" "!") "?"
		 "\" "  ('"P"))))
 (assert (failed?
   (test "<DIV>Example: \"&example;\" <P/></DIV>"
	(lambda (elem-gi seed)
	  (values #f '(('"quote" . "<I>example:")
		       ('"example" . "<Q>&quote;</I>!</Q>?")) '() seed))
	'())))

 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values #f '() '() seed))
       '((('"URI1" . '"DIV") (@ ('"B" "B") (('"URI1" . '"B") "A"))
	  (*NAMESPACES* (('"A" '"URI1" . '"URI1")
			 (*DEFAULT* '"URI1" . '"URI1")))
	  (('"URI1" . '"P")
	   (*NAMESPACES* ((*DEFAULT* #f . #f) ('"A" '"URI1" . '"URI1")
			  (*DEFAULT* '"URI1" . '"URI1")))
	   ('"BR"
	    (*NAMESPACES* ((*DEFAULT* #f . #f)
			   ('"A" '"URI1" . '"URI1")
			   (*DEFAULT* '"URI1" . '"URI1"))))))))
 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values #f '() '((#f '"UA" . '"URI1")) seed))
       '((('"UA" . '"DIV") (@ ('"B" "B") (('"UA" . '"B") "A"))
	  (*NAMESPACES* (('"A" '"UA" . '"URI1")
			 (*DEFAULT* '"UA" . '"URI1") (#f '"UA" . '"URI1")))
	  (('"UA" . '"P")
	   (*NAMESPACES* ((*DEFAULT* #f . #f) ('"A" '"UA" . '"URI1")
			  (*DEFAULT* '"UA" . '"URI1") (#f '"UA" . '"URI1")))
	   ('"BR"
	    (*NAMESPACES* ((*DEFAULT* #f . #f) ('"A" '"UA" . '"URI1")
			   (*DEFAULT* '"UA" . '"URI1")
			   (#f '"UA" . '"URI1"))))))))
 ; uniqattr should fail
 (assert (failed?
 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values
	   `(('"DIV" ANY (('"B" CDATA IMPLIED #f)
		       (('"A" . '"B") CDATA IMPLIED #f)
		       (('"C" . '"B") CDATA IMPLIED "xx")
		       (('"xmlns" . '"C") CDATA IMPLIED "URI1")
		       ))
	     (('"A" . '"P") ANY ()) ('"BR" '"EMPTY" ()))
	   '() '((#f '"UA" . '"URI1")) seed))
	'())))
 ; prefix C undeclared
 (assert (failed?
 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values
	   '(('"DIV" ANY (('"B" CDATA IMPLIED #f)
		       ('"xmlns"  CDATA IMPLIED "URI1")
		       (('"A" . '"B") CDATA IMPLIED #f)
		       (('"C" . '"B") CDATA IMPLIED "xx")
		       ))
	     (('"A" . '"P") ANY ()) ('"BR" EMPTY ()))
	   '() '((#f '"UA" . '"URI1")) seed))
	'())))

 ; contradiction to xmlns declaration
 (assert (failed?
 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values
	   '(('"DIV" ANY (('"B" CDATA IMPLIED #f)
		       ('"xmlns"  CDATA FIXED "URI2")
		       (('"A" . '"B") CDATA IMPLIED #f)
		       ))
	     (('"A" . '"P") ANY ()) ('"BR" EMPTY ()))
	   '() '((#f '"UA" . '"URI1")) seed))
	'())))

 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values
	   '(('"DIV" ANY (('"B" CDATA IMPLIED #f)
		       ('"xmlns"  CDATA FIXED "URI1")
		       (('"A" . '"B") CDATA IMPLIED #f)
		       ))
	     (('"A" . '"P") ANY ()) ('"BR" EMPTY ()))
	   '() '((#f '"UA" . '"URI1")) seed))
       '((('"UA" . '"DIV") (@ ('"B" "B") (('"UA" . '"B") "A"))
	  (*NAMESPACES* ((*DEFAULT* '"UA" . '"URI1")
			 ('"A" '"UA" . '"URI1") (#f '"UA" . '"URI1")))
	  (('"UA" . '"P")
	   (*NAMESPACES* ((*DEFAULT* #f . #f)
			  (*DEFAULT* '"UA" . '"URI1")
			  ('"A" '"UA" . '"URI1") (#f '"UA" . '"URI1")))
	   ('"BR"
	    (*NAMESPACES* ((*DEFAULT* #f . #f) (*DEFAULT* '"UA" . '"URI1")
			   ('"A" '"UA" . '"URI1") (#f '"UA" . '"URI1"))))))))

 (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>"
	(lambda (elem-gi seed)
	  (values
	   '(('"DIV" ANY (('"B" CDATA IMPLIED #f)
			  (('"A" . '"B") CDATA IMPLIED #f)
			  (('"C" . '"B") CDATA IMPLIED "xx")
			  (('"xmlns" . '"C") CDATA IMPLIED "URI2")
		       ))
	     (('"A" . '"P") ANY ()) ('"BR" EMPTY ()))
	   '() '((#f '"UA" . '"URI1")) seed))
	'((('"UA" . '"DIV") (@ ('"B" "B") (('"UA" . '"B") "A")
			       (('"URI2" . '"B") "xx"))
	   (*NAMESPACES* ((*DEFAULT* '"UA" . '"URI1")
			  ('"A" '"UA" . '"URI1")
			  ('"C" '"URI2" . '"URI2")
			  (#f '"UA" . '"URI1")))
	   (('"UA" . '"P")
	    (*NAMESPACES* ((*DEFAULT* #f . #f) (*DEFAULT* '"UA" . '"URI1")
			   ('"A" '"UA" . '"URI1")
			   ('"C" '"URI2" . '"URI2") (#f '"UA" . '"URI1")))
	    ('"BR"
	     (*NAMESPACES* ((*DEFAULT* #f . #f)
			    (*DEFAULT* '"UA" . '"URI1")
			    ('"A" '"UA" . '"URI1")
			    ('"C" '"URI2" . '"URI2")
			    (#f '"UA" . '"URI1"))))))))
))



;========================================================================
;		Highest-level parsers: XML to SXML
;

; First, a few utility procedures that turned out useful

;     ssax:reverse-collect-str LIST-OF-FRAGS -> LIST-OF-FRAGS
; given the list of fragments (some of which are text strings)
; reverse the list and concatenate adjacent text strings.
; We can prove from the general case below that if LIST-OF-FRAGS
; has zero or one element, the result of the procedure is equal?
; to its argument. This fact justifies the shortcut evaluation below.
(define (ssax:reverse-collect-str fragments)
  (cond
    ((null? fragments) '())	; a shortcut
    ((null? (cdr fragments)) fragments) ; see the comment above
    (else
      (let loop ((fragments fragments) (result '()) (strs '()))
	(cond
	  ((null? fragments)
	    (if (null? strs) result
	      (cons (string-concatenate/shared strs) result)))
	  ((string? (car fragments))
	    (loop (cdr fragments) result (cons (car fragments) strs)))
	  (else
	    (loop (cdr fragments)
	      (cons
		(car fragments)
		(if (null? strs) result
		  (cons (string-concatenate/shared strs) result)))
	      '())))))))


;     ssax:reverse-collect-str-drop-ws LIST-OF-FRAGS -> LIST-OF-FRAGS
; given the list of fragments (some of which are text strings)
; reverse the list and concatenate adjacent text strings.
; We also drop "unsignificant" whitespace, that is, whitespace
; in front, behind and between elements. The whitespace that
; is included in character data is not affected.
; We use this procedure to "intelligently" drop "insignificant"
; whitespace in the parsed SXML. If the strict compliance with
; the XML Recommendation regarding the whitespace is desired, please
; use the ssax:reverse-collect-str procedure instead.

(define (ssax:reverse-collect-str-drop-ws fragments)
  (cond
    ((null? fragments) '())		; a shortcut
    ((null? (cdr fragments))		; another shortcut
     (if (and (string? (car fragments)) (string-whitespace? (car fragments)))
       '() fragments))			; remove trailing ws
    (else
      (let loop ((fragments fragments) (result '()) (strs '())
		  (all-whitespace? #t))
	(cond
	  ((null? fragments)
	    (if all-whitespace? result	; remove leading ws
	      (cons (string-concatenate/shared strs) result)))
	  ((string? (car fragments))
	    (loop (cdr fragments) result (cons (car fragments) strs)
	      (and all-whitespace?
		(string-whitespace? (car fragments)))))
	  (else
	    (loop (cdr fragments)
	      (cons
		(car fragments)
		(if all-whitespace? result
		  (cons (string-concatenate/shared strs) result)))
	      '() #t)))))))


; procedure: ssax:xml->sxml PORT NAMESPACE-PREFIX-ASSIG
;
; This is an instance of a SSAX parser above that returns an SXML
; representation of the XML document to be read from PORT.
; NAMESPACE-PREFIX-ASSIG is a list of (USER-PREFIX . URI-STRING)
; that assigns USER-PREFIXes to certain namespaces identified by
; particular URI-STRINGs. It may be an empty list.
; The procedure returns an SXML tree. The port points out to the
; first character after the root element.

(define (ssax:xml->sxml port namespace-prefix-assig)
  (letrec
      ((namespaces
	(map (lambda (el)
	       (cons* #f (car el) (ssax:uri-string->symbol (cdr el))))
	     namespace-prefix-assig))

       (RES-NAME->SXML
	(lambda (res-name)
	  (string->symbol
	   (string-append
	    (symbol->string (car res-name))
	    ":"
	    (symbol->string (cdr res-name))))))

       )
    (let ((result
	   (reverse
	    ((ssax:make-parser
	     NEW-LEVEL-SEED
	     (lambda (elem-gi attributes namespaces
			      expected-content seed)
	       '())

	     FINISH-ELEMENT
	     (lambda (elem-gi attributes namespaces parent-seed seed)
	       (let ((seed (ssax:reverse-collect-str-drop-ws seed))
		     (attrs
		      (attlist-fold
		       (lambda (attr accum)
			 (cons (list
				(if (symbol? (car attr)) (car attr)
				    (RES-NAME->SXML (car attr)))
				(cdr attr)) accum))
		       '() attributes)))
		 (cons
		  (cons
		   (if (symbol? elem-gi) elem-gi
		       (RES-NAME->SXML elem-gi))
		   (if (null? attrs) seed
		       (cons (cons '@ attrs) seed)))
		  parent-seed)))

	     CHAR-DATA-HANDLER
	     (lambda (string1 string2 seed)
	       (if (string-null? string2) (cons string1 seed)
		   (cons* string2 string1 seed)))

	     DOCTYPE
	     (lambda (port docname systemid internal-subset? seed)
	       (when internal-subset?
		     (ssax:warn port
			   "Internal DTD subset is not currently handled ")
		     (ssax:skip-internal-dtd port))
	       (ssax:warn port "DOCTYPE DECL " docname " "
		     systemid " found and skipped")
	       (values #f '() namespaces seed))

	     UNDECL-ROOT
	     (lambda (elem-gi seed)
	       (values #f '() namespaces seed))

	     PI
	     ((*DEFAULT* .
		(lambda (port pi-tag seed)
		  (cons
		   (list '*PI* pi-tag (ssax:read-pi-body-as-string port))
		   seed))))
	     )
	    port '()))))
      (cons '*TOP*
	    (if (null? namespace-prefix-assig) result
		(cons
		 (list '@ (cons '*NAMESPACES*
				 (map (lambda (ns) (list (car ns) (cdr ns)))
				      namespace-prefix-assig)))
		      result)))
)))

; For backwards compatibility
(define SSAX:XML->SXML ssax:xml->sxml)


; a few lines of validation code
(run-test (letrec
    ((test (lambda (str namespace-assig expected-res)
	  (newline) (display "input: ")
	  (write (unesc-string str)) (newline) (display "Result: ")
	  (let ((result
		 (call-with-input-string (unesc-string str)
		     (lambda (port)
		       (ssax:xml->sxml port namespace-assig)))))
	    (pp result)
	    (assert (equal_? result expected-res))))))

    (test " <BR/>" '() '(*TOP* (BR)))
    (test "<BR></BR>" '() '(*TOP* (BR)))
    (test " <BR CLEAR='ALL'%nCLASS='Class1'/>" '()
	  '(*TOP* (BR (@ (CLEAR "ALL") (CLASS "Class1")))))
    (test "   <A HREF='URL'>  link <I>itlink </I> &amp;amp;</A>" '()
	  '(*TOP* (A (@ (HREF "URL")) "  link " (I "itlink ") " &amp;")))
    (test "   <A HREF='URL' xml:space='preserve'>  link <I>itlink </I> &amp;amp;</A>" '()
	  '(*TOP* (A (@ (xml:space "preserve") (HREF "URL"))
		     "  link " (I "itlink ") " &amp;")))
    (test "   <A HREF='URL' xml:space='preserve'>  link <I xml:space='default'>itlink </I> &amp;amp;</A>" '()
	  '(*TOP* (A (@ (xml:space "preserve") (HREF "URL"))
		     "  link " (I (@ (xml:space "default"))
				  "itlink ") " &amp;")))
    (test " <P><?pi1  p1 content ?>?<?pi2 pi2? content? ??></P>" '()
	  '(*TOP* (P (*PI* pi1 "p1 content ") "?"
		     (*PI* pi2 "pi2? content? ?"))))
    (test " <P>some text <![CDATA[<]]>1%n&quot;<B>strong</B>&quot;%r</P>"
	  '()
	  `(*TOP* (P ,(unesc-string "some text <1%n\"")
		      (B "strong") ,(unesc-string "\"%n"))))
    (test " <P><![CDATA[<BR>%n<![CDATA[<BR>]]&gt;]]></P>" '()
	  `(*TOP* (P ,(unesc-string "<BR>%n<![CDATA[<BR>]]>"))))
;    (test "<T1><T2>it&apos;s%r%nand   that%n</T2>%r%n%r%n%n</T1>" '()
;	  '(*TOP* (T1 (T2 "it's%nand   that%n") "%n%n%n")))
    (test "<T1><T2>it&apos;s%r%nand   that%n</T2>%r%n%r%n%n</T1>" '()
	  `(*TOP* (T1 (T2 ,(unesc-string "it's%nand   that%n")))))
    (test "<T1><T2>it&apos;s%rand   that%n</T2>%r%n%r%n%n</T1>" '()
	  `(*TOP* (T1 (T2 ,(unesc-string "it's%nand   that%n")))))
    (test "<!DOCTYPE T SYSTEM 'system1' ><!-- comment -->%n<T/>" '()
	  '(*TOP* (T)))
    (test "<?xml version='1.0'?>%n<WEIGHT unit=\"pound\">%n<NET certified='certified'> 67 </NET>%n<GROSS> 95 </GROSS>%n</WEIGHT>" '()
	  '(*TOP* (*PI* xml "version='1.0'") (WEIGHT (@ (unit "pound"))
                (NET (@ (certified "certified")) " 67 ")
                (GROSS " 95 "))
		  ))
;     (test "<?xml version='1.0'?>%n<WEIGHT unit=\"pound\">%n<NET certified='certified'> 67 </NET>%n<GROSS> 95 </GROSS>%n</WEIGHT>" '()
; 	  '(*TOP* (*PI* xml "version='1.0'") (WEIGHT (@ (unit "pound"))
;                "%n" (NET (@ (certified "certified")) " 67 ")
;                "%n" (GROSS " 95 ") "%n")
; 		  ))
    (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>" '()
	  '(*TOP* (URI1:DIV (@ (URI1:B "A") (B "B")) (URI1:P (BR)))))
    (test "<DIV A:B='A' B='B' xmlns:A='URI1' xmlns='URI1'><A:P xmlns=''><BR/></A:P></DIV>" '((UA . "URI1"))
	  '(*TOP* (@ (*NAMESPACES* (UA "URI1")))
		  (UA:DIV (@ (UA:B "A") (B "B")) (UA:P (BR)))))

    ; A few tests from XML Namespaces Recommendation
    (test (string-append
	   "<x xmlns:edi='http://ecommerce.org/schema'>"
           "<!-- the 'taxClass' attribute's  ns http://ecommerce.org/schema -->"
           "<lineItem edi:taxClass='exempt'>Baby food</lineItem>" nl
           "</x>") '()
	   '(*TOP*
	     (x (lineItem
		 (@ (http://ecommerce.org/schema:taxClass "exempt"))
            "Baby food"))))
    (test (string-append
	   "<x xmlns:edi='http://ecommerce.org/schema'>"
           "<!-- the 'taxClass' attribute's  ns http://ecommerce.org/schema -->"
           "<lineItem edi:taxClass='exempt'>Baby food</lineItem>"
           "</x>") '((EDI . "http://ecommerce.org/schema"))
	   '(*TOP*
	     (@ (*NAMESPACES* (EDI "http://ecommerce.org/schema")))
	     (x (lineItem
		 (@ (EDI:taxClass "exempt"))
            "Baby food"))))

    (test (string-append
	   "<bk:book xmlns:bk='urn:loc.gov:books' "
                     "xmlns:isbn='urn:ISBN:0-395-36341-6'>"
	   "<bk:title>Cheaper by the Dozen</bk:title>"
           "<isbn:number>1568491379</isbn:number></bk:book>")
	  '()
	  '(*TOP* (urn:loc.gov:books:book
		   (urn:loc.gov:books:title "Cheaper by the Dozen")
		   (urn:ISBN:0-395-36341-6:number "1568491379"))))

    (test (string-append
	   "<!-- initially, the default namespace is 'books' -->"
           "<book xmlns='urn:loc.gov:books' "
           "xmlns:isbn='urn:ISBN:0-395-36341-6'>"
           "<title>Cheaper by the Dozen</title>"
           "<isbn:number>1568491379</isbn:number>"
	   "<notes>"
	   "<!-- make HTML the default namespace for some commentary -->"
	   "<p xmlns='urn:w3-org-ns:HTML'>"
	   "This is a <i>funny</i> book!"
            "</p>"
            "</notes>"
            "</book>") '()
	    '(*TOP* (urn:loc.gov:books:book
		   (urn:loc.gov:books:title "Cheaper by the Dozen")
		   (urn:ISBN:0-395-36341-6:number "1568491379")
		   (urn:loc.gov:books:notes
		    (urn:w3-org-ns:HTML:p
		     "This is a " (urn:w3-org-ns:HTML:i "funny")
		     " book!")))))

    (test (string-append
	   "<Beers>"
           "<!-- the default namespace is now that of HTML -->"
           "<table xmlns='http://www.w3.org/TR/REC-html40'>"
           "<th><td>Name</td><td>Origin</td><td>Description</td></th>"
           "<tr>"
           "<!-- no default namespace inside table cells -->"
           "<td><brandName xmlns=\"\">Huntsman</brandName></td>"
           "<td><origin xmlns=''>Bath, UK</origin></td>"
           "<td>"
              "<details xmlns=''><class>Bitter</class><hop>Fuggles</hop>"
              "<pro>Wonderful hop, light alcohol, good summer beer</pro>"
              "<con>Fragile; excessive variance pub to pub</con>"
              "</details>"
	   "</td>"
           "</tr>"
           "</table>"
           "</Beers>")
	      '((html . "http://www.w3.org/TR/REC-html40"))
	      '(*TOP*
		(@ (*NAMESPACES* (html "http://www.w3.org/TR/REC-html40")))
		(Beers (html:table
                (html:th (html:td "Name")
                         (html:td "Origin")
                         (html:td "Description"))
                (html:tr (html:td (brandName "Huntsman"))
                         (html:td (origin "Bath, UK"))
                         (html:td
			  (details
			   (class "Bitter")
			(hop "Fuggles")
			(pro "Wonderful hop, light alcohol, good summer beer")
			(con "Fragile; excessive variance pub to pub"))))))))

    (test (string-append
       "<!-- 1 --><RESERVATION xmlns:HTML='http://www.w3.org/TR/REC-html40'>"
       "<!-- 2 --><NAME HTML:CLASS=\"largeSansSerif\">Layman, A</NAME>"
       "<!-- 3 --><SEAT CLASS='Y' HTML:CLASS=\"largeMonotype\">33B</SEAT>"
       "<!-- 4 --><HTML:A HREF='/cgi-bin/ResStatus'>Check Status</HTML:A>"
       "<!-- 5 --><DEPARTURE>1997-05-24T07:55:00+1</DEPARTURE></RESERVATION>")
	  '((HTML . "http://www.w3.org/TR/REC-html40"))
	  '(*TOP*
	    (@ (*NAMESPACES* (HTML "http://www.w3.org/TR/REC-html40")))
	     (RESERVATION
	      (NAME (@ (HTML:CLASS "largeSansSerif")) "Layman, A")
	      (SEAT (@ (HTML:CLASS "largeMonotype") (CLASS "Y")) "33B")
	      (HTML:A (@ (HREF "/cgi-bin/ResStatus")) "Check Status")
	      (DEPARTURE "1997-05-24T07:55:00+1"))))
    ; Part of RDF from the XML Infoset
        (test (string-concatenate/shared (list-intersperse '(
   "<?xml version='1.0' encoding='utf-8' standalone='yes'?>"
   "<!-- this can be decoded as US-ASCII or iso-8859-1 as well,"
   "  since it contains no characters outside the US-ASCII repertoire -->"
   "<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#'"
   "         xmlns:rdfs='http://www.w3.org/2000/01/rdf-schema#'"
   "          xmlns='http://www.w3.org/2001/02/infoset#'>"
   "<rdfs:Class ID='Boolean'/>"
   "<Boolean ID='Boolean.true'/>"
   "<Boolean ID='Boolean.false'/>"
   "<!--Info item classes-->"
   "<rdfs:Class ID='InfoItem'/>"
   "<rdfs:Class ID='Document' rdfs:subClassOf='#InfoItem'/>"
   "<rdfs:Class ID='Element' rdfs:subClassOf='#InfoItem'/>"
   "<rdfs:Class ID='Attribute' rdfs:subClassOf='#InfoItem'/>"
   "<rdfs:Class ID='InfoItemSet'
      rdfs:subClassOf='http://www.w3.org/1999/02/22-rdf-syntax-ns#Bag'/>"
   "<rdfs:Class ID='AttributeSet' rdfs:subClassOf='#InfoItemSet'/>"
   "<!--Info item properties-->"
   "<rdfs:Property ID='allDeclarationsProcessed'>"
   "<rdfs:domain resource='#Document'/>"
   "<rdfs:range resource='#Boolean'/></rdfs:Property>"
   "<rdfs:Property ID='attributes'>"
   "<rdfs:domain resource='#Element'/>"
   "<rdfs:range resource='#AttributeSet'/>"
   "</rdfs:Property>"
   "</rdf:RDF>")
   (string #\newline)))
   '((RDF . "http://www.w3.org/1999/02/22-rdf-syntax-ns#")
     (RDFS . "http://www.w3.org/2000/01/rdf-schema#")
     (ISET . "http://www.w3.org/2001/02/infoset#"))
   '(*TOP* (@ (*NAMESPACES*
         (RDF "http://www.w3.org/1999/02/22-rdf-syntax-ns#")
         (RDFS "http://www.w3.org/2000/01/rdf-schema#")
         (ISET "http://www.w3.org/2001/02/infoset#")))
       (*PI* xml "version='1.0' encoding='utf-8' standalone='yes'")
       (RDF:RDF
	(RDFS:Class (@ (ID "Boolean")))
	(ISET:Boolean (@ (ID "Boolean.true")))
	(ISET:Boolean (@ (ID "Boolean.false")))
	(RDFS:Class (@ (ID "InfoItem")))
	(RDFS:Class (@ (RDFS:subClassOf "#InfoItem") (ID "Document")))
	(RDFS:Class (@ (RDFS:subClassOf "#InfoItem") (ID "Element")))
	(RDFS:Class (@ (RDFS:subClassOf "#InfoItem") (ID "Attribute")))
	(RDFS:Class
	 (@ (RDFS:subClassOf
	     "http://www.w3.org/1999/02/22-rdf-syntax-ns#Bag")
	    (ID "InfoItemSet")))
	(RDFS:Class
	 (@ (RDFS:subClassOf "#InfoItemSet") (ID "AttributeSet")))
	(RDFS:Property
	 (@ (ID "allDeclarationsProcessed"))
	 (RDFS:domain (@ (resource "#Document")))
	 (RDFS:range (@ (resource "#Boolean"))))
	(RDFS:Property
	 (@ (ID "attributes"))
	 (RDFS:domain (@ (resource "#Element")))
	 (RDFS:range (@ (resource "#AttributeSet")))))))

    ; Part of RDF from RSS of the Daemon News Mall
        (test (string-concatenate/shared (list-intersperse '(
  "<?xml version='1.0'?><rdf:RDF "
    "xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' "
     "xmlns='http://my.netscape.com/rdf/simple/0.9/'>"
     "<channel>"
     "<title>Daemon News Mall</title>"
     "<link>http://mall.daemonnews.org/</link>"
     "<description>Central source for all your BSD needs</description>"
     "</channel>"
     "<item>"
     "<title>Daemon News Jan/Feb Issue NOW Available! Subscribe $24.95</title>"
     "<link>http://mall.daemonnews.org/?page=shop/flypage&amp;product_id=880</link>"
     "</item>"
     "<item>"
     "<title>The Design and Implementation of the 4.4BSD Operating System $54.95</title>"
     "<link>http://mall.daemonnews.org/?page=shop/flypage&amp;product_id=912&amp;category_id=1761</link>"
     "</item>"
     "</rdf:RDF>")
   (string #\newline)
   ))
   '((RDF . "http://www.w3.org/1999/02/22-rdf-syntax-ns#")
     (RSS . "http://my.netscape.com/rdf/simple/0.9/")
     (ISET . "http://www.w3.org/2001/02/infoset#"))
   '(*TOP* (@ (*NAMESPACES*
         (RDF "http://www.w3.org/1999/02/22-rdf-syntax-ns#")
         (RSS "http://my.netscape.com/rdf/simple/0.9/")
         (ISET "http://www.w3.org/2001/02/infoset#")))
       (*PI* xml "version='1.0'")
       (RDF:RDF (RSS:channel
                  (RSS:title "Daemon News Mall")
                  (RSS:link "http://mall.daemonnews.org/")
                  (RSS:description "Central source for all your BSD needs"))
                (RSS:item
                  (RSS:title
                    "Daemon News Jan/Feb Issue NOW Available! Subscribe $24.95")
                  (RSS:link
                    "http://mall.daemonnews.org/?page=shop/flypage&product_id=880"))
                (RSS:item
                  (RSS:title
                    "The Design and Implementation of the 4.4BSD Operating System $54.95")
                  (RSS:link
                    "http://mall.daemonnews.org/?page=shop/flypage&product_id=912&category_id=1761")))))

    (test (string-concatenate/shared (list-intersperse
       '("<Forecasts TStamp='958082142'>"
	 "<TAF TStamp='958066200' LatLon='36.583, -121.850' BId='724915'"
	 "  SName='KMRY, MONTEREY PENINSULA'>"
	 "<VALID TRange='958068000, 958154400'>111730Z 111818</VALID>"
	 "<PERIOD TRange='958068000, 958078800'>"
	 "<PREVAILING>31010KT P6SM FEW030</PREVAILING>"
	 "</PERIOD>"
	 "<PERIOD TRange='958078800, 958104000' Title='FM2100'>"
	 "<PREVAILING>29016KT P6SM FEW040</PREVAILING>"
	 "</PERIOD>"
	 "<PERIOD TRange='958104000, 958154400' Title='FM0400'>"
	 "<PREVAILING>29010KT P6SM SCT200</PREVAILING>"
	 "<VAR Title='BECMG 0708' TRange='958114800, 958118400'>VRB05KT</VAR>"
	 "</PERIOD></TAF>"
	 "</Forecasts>")
       (string #\newline)
       ))
	  '()
	  '(*TOP* (Forecasts
		   (@ (TStamp "958082142"))
		   (TAF (@ (TStamp "958066200")
			   (SName "KMRY, MONTEREY PENINSULA")
			   (LatLon "36.583, -121.850")
			   (BId "724915"))
              (VALID (@ (TRange "958068000, 958154400")) "111730Z 111818")
              (PERIOD (@ (TRange "958068000, 958078800"))
                      (PREVAILING "31010KT P6SM FEW030"))
              (PERIOD (@ (Title "FM2100") (TRange "958078800, 958104000"))
                      (PREVAILING "29016KT P6SM FEW040"))
              (PERIOD (@ (Title "FM0400") (TRange "958104000, 958154400"))
                      (PREVAILING "29010KT P6SM SCT200")
                      (VAR (@ (Title "BECMG 0708")
                              (TRange "958114800, 958118400"))
                           "VRB05KT"))))))
))

(run-test
 (newline)
 (display "All tests passed")
 (newline)
)
