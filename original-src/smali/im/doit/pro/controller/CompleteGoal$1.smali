.class Lim/doit/pro/controller/CompleteGoal$1;
.super Ljava/lang/Object;
.source "CompleteGoal.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/CompleteGoal;->complete(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/CompleteGoal;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/CompleteGoal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/CompleteGoal$1;->this$0:Lim/doit/pro/controller/CompleteGoal;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lim/doit/pro/controller/CompleteGoal$DoComplete;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$1;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-direct {v0, v1, v2}, Lim/doit/pro/controller/CompleteGoal$DoComplete;-><init>(Lim/doit/pro/controller/CompleteGoal;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/controller/CompleteGoal$DoComplete;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 44
    return-void
.end method
