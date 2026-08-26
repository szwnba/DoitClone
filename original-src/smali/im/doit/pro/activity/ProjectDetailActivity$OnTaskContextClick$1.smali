.class Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$7(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 513
    return-void
.end method
