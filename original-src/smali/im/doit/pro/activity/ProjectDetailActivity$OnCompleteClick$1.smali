.class Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$4(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 355
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 356
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->finish()V

    .line 357
    return-void
.end method
