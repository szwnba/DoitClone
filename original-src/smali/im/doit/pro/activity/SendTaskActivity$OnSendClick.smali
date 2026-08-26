.class Lim/doit/pro/activity/SendTaskActivity$OnSendClick;
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
    name = "OnSendClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SendTaskActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SendTaskActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SendTaskActivity;Lim/doit/pro/activity/SendTaskActivity$OnSendClick;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;-><init>(Lim/doit/pro/activity/SendTaskActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SendTaskActivity;->access$1(Lim/doit/pro/activity/SendTaskActivity;)V

    .line 131
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;->this$0:Lim/doit/pro/activity/SendTaskActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SendTaskActivity;->access$2(Lim/doit/pro/activity/SendTaskActivity;)V

    .line 132
    return-void
.end method
