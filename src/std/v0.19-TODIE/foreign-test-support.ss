(import :std/foreign)
(export #t)

(begin-ffi (f
            (struct abc a b)
            (struct foo a1 d2 str)
            (struct bar i j)
            g
            (struct a_struct g h)
            (struct anon_struct a b)
            in-struct-out-alias
            in-alias-out-struct
            )
  (c-declare "
struct abc {
    char* a;
    char* b;
    char* c;
};
struct d { int e;};

struct foo {
    struct abc* a1;
    struct abc* d2;
    char* str;
};

struct bar {
int i;
int j;
};

typedef struct a_struct {
  int g;
  int h;
} an_alias;

typedef struct {
  char* a;
  char* b;
  char* c;
} anon_struct;

an_alias *in_struct_out_alias(struct a_struct *s) {
  an_alias* a = (an_alias *) malloc(sizeof(an_alias));
  a->g = s->g;
  a->h = 77;
  return a;
}

struct a_struct *in_alias_out_struct(an_alias *a) {
  struct a_struct* s = (struct a_struct *) malloc(sizeof(struct a_struct));
  s->g = a->h;
  s->h = a->g;
  return s;
}

")


  (c-define-type d (struct "d"))
  (define-c-lambda f () int "___return(2);")
  (define-c-lambda g () int "___return(2);")
  (define-c-struct abc ((a . char-string)
                        (b . char-string)))

  (define-c-struct foo ((a1 . abc*)
                        (d2 . abc*)
                        (str . char-string)))
  (define-c-struct bar ((i . int)
                        (j . int)))

  (c-define-type an-alias (type "an_alias" (an_alias a_struct)))
  (c-define-type an-alias* (pointer an-alias (an_alias* a_struct*)))
  (define-c-struct a_struct
    ((g . int) (h . int))
    #f (an_alias))
  (define-c-struct anon_struct
    ((a . char-string) (b . char-string))
    #f #f #t)
  (define-c-lambda in-struct-out-alias (a_struct*) an-alias* "in_struct_out_alias")
  (define-c-lambda in-alias-out-struct (an-alias*) a_struct* "in_alias_out_struct"))
