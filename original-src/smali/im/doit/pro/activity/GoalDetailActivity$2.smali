.class Lim/doit/pro/activity/GoalDetailActivity$2;
.super Ljava/lang/Object;
.source "GoalDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalDetailActivity;
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
    iput-object p1, p0, Lim/doit/pro/activity/GoalDetailActivity$2;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$2;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalDetailActivity;->finish()V

    .line 211
    return-void
.end method
