/* ex_cmds2.c */
void do_debug __ARGS((char_u *cmd));
void ex_debug __ARGS((exarg_T *eap));
void dbg_check_breakpoint __ARGS((exarg_T *eap));
int dbg_check_skipped __ARGS((exarg_T *eap));
void ex_breakadd __ARGS((exarg_T *eap));
void ex_debuggreedy __ARGS((exarg_T *eap));
void ex_breakdel __ARGS((exarg_T *eap));
void ex_breaklist __ARGS((exarg_T *eap));
linenr_T dbg_find_breakpoint __ARGS((int file, char_u *fname, linenr_T after));
int has_profiling __ARGS((int file, char_u *fname, int *fp));
void dbg_breakpoint __ARGS((char_u *name, linenr_T lnum));
void profile_start __ARGS((proftime_T *tm));
void profile_end __ARGS((proftime_T *tm));
void profile_sub __ARGS((proftime_T *tm, proftime_T *tm2));
char *profile_msg __ARGS((proftime_T *tm));
void profile_setlimit __ARGS((long msec, proftime_T *tm));
int profile_passed_limit __ARGS((proftime_T *tm));
void profile_zero __ARGS((proftime_T *tm));
void profile_add __ARGS((proftime_T *tm, proftime_T *tm2));
void profile_self __ARGS((proftime_T *self, proftime_T *total, proftime_T *children));
void profile_get_wait __ARGS((proftime_T *tm));
void profile_sub_wait __ARGS((proftime_T *tm, proftime_T *tma));
int profile_equal __ARGS((proftime_T *tm1, proftime_T *tm2));
int profile_cmp __ARGS((const proftime_T *tm1, const proftime_T *tm2));
void ex_profile __ARGS((exarg_T *eap));
char_u *get_profile_name __ARGS((expand_T *xp, int idx));
void set_context_in_profile_cmd __ARGS((expand_T *xp, char_u *arg));
void profile_dump __ARGS((void));
void script_prof_save __ARGS((proftime_T *tm));
void script_prof_restore __ARGS((proftime_T *tm));
void prof_inchar_enter __ARGS((void));
void prof_inchar_exit __ARGS((void));
int prof_def_func __ARGS((void));
int autowrite __ARGS((buf_T *buf, int forceit, async_context *_async_context));
void autowrite_all __ARGS((async_context *_async_context));
int check_changed __ARGS((buf_T *buf, int flags, async_context *_async_context));
void browse_save_fname __ARGS((buf_T *buf));
void dialog_changed __ARGS((buf_T *buf, int checkall));
int can_abandon __ARGS((buf_T *buf, int forceit));
int check_changed_any __ARGS((int hidden, async_context *_async_context));
int check_fname __ARGS((void));
int buf_write_all __ARGS((buf_T *buf, int forceit, async_context *_async_context));
int get_arglist __ARGS((garray_T *gap, char_u *str));
int get_arglist_exp __ARGS((char_u *str, int *fcountp, char_u ***fnamesp, int wig));
void set_arglist __ARGS((char_u *str, async_context *_async_context));
void check_arg_idx __ARGS((win_T *win));
void ex_args __ARGS((exarg_T *eap, async_context *_async_context));
void ex_previous __ARGS((exarg_T *eap, async_context *_async_context));
void ex_rewind __ARGS((exarg_T *eap, async_context *_async_context));
void ex_last __ARGS((exarg_T *eap, async_context *_async_context));
void ex_argument __ARGS((exarg_T *eap, async_context *_async_context));
void do_argfile __ARGS((exarg_T *eap, int argn, async_context *_async_context));
void ex_next __ARGS((exarg_T *eap, async_context *_async_context));
void ex_runtime __ARGS((exarg_T *eap));
int source_runtime __ARGS((char_u *name, int all, async_context *_async_context));
int do_in_runtimepath __ARGS((char_u *name, int all, void (*callback)(char_u *fname, void *ck), void *cookie, async_context *_async_context));
void ex_source __ARGS((exarg_T *eap, async_context *_async_context));
int do_source __ARGS((char_u *fname, int check_other, int is_vimrc, async_context *_async_context));
void ex_scriptnames __ARGS((exarg_T *eap));
void scriptnames_slash_adjust __ARGS((void));
char_u *get_scriptname __ARGS((scid_T id));
void free_scriptnames __ARGS((void));
char *fgets_cr __ARGS((char *s, int n, FILE *stream));
char_u *getsourceline __ARGS((int c, void *cookie, int indent));
void script_line_start __ARGS((void));
void script_line_exec __ARGS((void));
void script_line_end __ARGS((void));
void ex_scriptencoding __ARGS((exarg_T *eap));
void ex_finish __ARGS((exarg_T *eap));
void do_finish __ARGS((exarg_T *eap, int reanimate));
int source_finished __ARGS((char_u *(*fgetline)(int, void *, int), void *cookie));
void ex_checktime __ARGS((exarg_T *eap));
char_u *get_mess_lang __ARGS((void));
void set_lang_var __ARGS((void));
/* vim: set ft=c : */
