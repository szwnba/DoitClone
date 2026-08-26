.class Lim/doit/pro/controller/TrashProject$2;
.super Ljava/lang/Object;
.source "TrashProject.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/controller/TrashProject;->trashProject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/controller/TrashProject;


# direct methods
.method constructor <init>(Lim/doit/pro/controller/TrashProject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/controller/TrashProject$2;->this$0:Lim/doit/pro/controller/TrashProject;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Z)V
    .locals 1
    .param p1, "complete"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject$2;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v0}, Lim/doit/pro/controller/TrashProject;->access$3(Lim/doit/pro/controller/TrashProject;)V

    .line 97
    return-void
.end method
