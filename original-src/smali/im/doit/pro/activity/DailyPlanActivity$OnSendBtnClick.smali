.class Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;
.super Ljava/lang/Object;
.source "DailyPlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSendBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/DailyPlanActivity;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/DailyPlanActivity;Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 473
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanActivity;->access$12(Lim/doit/pro/activity/DailyPlanActivity;)V

    .line 474
    return-void
.end method
