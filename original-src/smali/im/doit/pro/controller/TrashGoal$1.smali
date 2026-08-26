.class Lim/doit/pro/controller/TrashGoal$1;
.super Ljava/lang/Object;
.source "TrashGoal.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/TrashGoal;->trash(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/TrashGoal;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/TrashGoal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/TrashGoal$1;->this$0:Lim/doit/pro/controller/TrashGoal;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    new-instance v0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;

    iget-object v1, p0, Lim/doit/pro/controller/TrashGoal$1;->this$0:Lim/doit/pro/controller/TrashGoal;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;-><init>(Lim/doit/pro/controller/TrashGoal;Lim/doit/pro/controller/TrashGoal$DoTrashGoal;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 47
    return-void
.end method
