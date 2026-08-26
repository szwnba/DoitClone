.class Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;
.super Ljava/lang/Object;
.source "TaskDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnReminderSnoozeClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailActivity;->access$0(Lim/doit/pro/activity/TaskDetailActivity;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/utils/TaskUtils;->snoozeReminder(Landroid/content/Context;Lim/doit/pro/model/Task;)V

    .line 367
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity;->access$2(Lim/doit/pro/activity/TaskDetailActivity;)V

    .line 368
    return-void
.end method
