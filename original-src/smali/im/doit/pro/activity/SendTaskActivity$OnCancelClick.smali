.class Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;
.super Ljava/lang/Object;
.source "SendTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SendTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SendTaskActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SendTaskActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SendTaskActivity;Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/SendTaskActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SendTaskActivity;->access$0(Lim/doit/pro/activity/SendTaskActivity;)Lim/doit/pro/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 123
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/SendTaskActivity;->finish()V

    .line 124
    return-void
.end method
