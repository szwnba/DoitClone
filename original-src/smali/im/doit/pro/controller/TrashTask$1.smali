.class Lim/doit/pro/controller/TrashTask$1;
.super Ljava/lang/Object;
.source "TrashTask.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/TrashTask;->trash(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/TrashTask;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/TrashTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/TrashTask$1;->this$0:Lim/doit/pro/controller/TrashTask;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Z)V
    .locals 1
    .param p1, "complete"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/controller/TrashTask$1;->this$0:Lim/doit/pro/controller/TrashTask;

    invoke-static {v0}, Lim/doit/pro/controller/TrashTask;->access$0(Lim/doit/pro/controller/TrashTask;)V

    .line 29
    return-void
.end method
