.class Lim/doit/pro/controller/DeleteTaskContext$1;
.super Ljava/lang/Object;
.source "DeleteTaskContext.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/DeleteTaskContext;->delete(Landroid/app/Activity;Lim/doit/pro/model/TaskContext;Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/DeleteTaskContext;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/DeleteTaskContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/DeleteTaskContext$1;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    new-instance v0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;

    iget-object v1, p0, Lim/doit/pro/controller/DeleteTaskContext$1;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;-><init>(Lim/doit/pro/controller/DeleteTaskContext;Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 44
    return-void
.end method
