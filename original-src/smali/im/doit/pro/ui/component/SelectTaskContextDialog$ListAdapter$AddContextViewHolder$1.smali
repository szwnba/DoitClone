.class Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder$1;
.super Ljava/lang/Object;
.source "SelectTaskContextDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {v3, v0}, Lim/doit/pro/utils/ToastUtils;->ContextExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 225
    new-instance v1, Lim/doit/pro/model/TaskContext;

    invoke-direct {v1}, Lim/doit/pro/model/TaskContext;-><init>()V

    .line 226
    .local v1, "taskContext":Lim/doit/pro/model/TaskContext;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/TaskContext;->setUuid(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v0}, Lim/doit/pro/model/TaskContext;->setName(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 229
    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/TaskContextDao;->createAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    .line 230
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;->access$0(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter$AddContextViewHolder;)Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTaskContextDialog;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$1(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
