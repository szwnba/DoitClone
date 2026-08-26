.class Lim/doit/pro/activity/GoalDetailActivity$6;
.super Ljava/lang/Object;
.source "GoalDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalDetailActivity;->focusOnTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalDetailActivity$6;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$6;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalDetailActivity;->access$5(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 191
    return-void
.end method
