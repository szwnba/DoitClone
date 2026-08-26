.class Lim/doit/pro/controller/CompleteTask$1;
.super Ljava/lang/Object;
.source "CompleteTask.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/CompleteTask;->complete(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/CompleteTask$CompleteTaskFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/CompleteTask;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/CompleteTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/CompleteTask$1;->this$0:Lim/doit/pro/controller/CompleteTask;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Z)V
    .locals 1
    .param p1, "complete"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/controller/CompleteTask$1;->this$0:Lim/doit/pro/controller/CompleteTask;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteTask;->access$0(Lim/doit/pro/controller/CompleteTask;)V

    .line 30
    return-void
.end method
