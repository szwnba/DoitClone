.class Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSpentTimeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;)V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onDialogTimeSet(III)V
    .locals 2
    .param p1, "reference"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 1477
    mul-int/lit8 v1, p2, 0x3c

    add-int v0, v1, p3

    .line 1478
    .local v0, "spentTime":I
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1, v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$18(Lim/doit/pro/activity/TaskDetailFragment;I)V

    .line 1479
    return-void
.end method
