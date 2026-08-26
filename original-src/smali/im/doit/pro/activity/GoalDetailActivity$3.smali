.class Lim/doit/pro/activity/GoalDetailActivity$3;
.super Ljava/lang/Object;
.source "GoalDetailActivity.java"

# interfaces
.implements Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalDetailActivity;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/GoalDetailActivity$3;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$3;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalDetailActivity;->access$4(Lim/doit/pro/activity/GoalDetailActivity;)V

    .line 141
    return-void
.end method
