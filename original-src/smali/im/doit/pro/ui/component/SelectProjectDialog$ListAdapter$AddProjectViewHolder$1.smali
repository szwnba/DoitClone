.class Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;
.super Ljava/lang/Object;
.source "SelectProjectDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->access$0(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;)Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectProjectDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$1(Lim/doit/pro/ui/component/SelectProjectDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lim/doit/pro/utils/ToastUtils;->ProjectExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 234
    new-instance v1, Lim/doit/pro/model/Project;

    invoke-direct {v1}, Lim/doit/pro/model/Project;-><init>()V

    .line 235
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Project;->setUuid(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v0}, Lim/doit/pro/model/Project;->setName(Ljava/lang/String;)V

    .line 237
    const-string v2, "active"

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 239
    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/ProjectDao;->createAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 240
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->access$0(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;)Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectProjectDialog;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
