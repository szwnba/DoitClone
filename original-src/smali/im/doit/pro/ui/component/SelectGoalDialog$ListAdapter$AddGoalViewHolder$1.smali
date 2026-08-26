.class Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder$1;
.super Ljava/lang/Object;
.source "SelectGoalDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;-><init>(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-static {v3, v1}, Lim/doit/pro/utils/ToastUtils;->GoalExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 224
    new-instance v0, Lim/doit/pro/model/Goal;

    invoke-direct {v0}, Lim/doit/pro/model/Goal;-><init>()V

    .line 225
    .local v0, "goal":Lim/doit/pro/model/Goal;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Goal;->setUuid(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setName(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v2, v0}, Lim/doit/pro/db/persist/GoalDao;->createAndSaveLog(Lim/doit/pro/model/Goal;)V

    .line 228
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;->access$0(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$AddGoalViewHolder;)Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectGoalDialog;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$1(Lim/doit/pro/ui/component/SelectGoalDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
