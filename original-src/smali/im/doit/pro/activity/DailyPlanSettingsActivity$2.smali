.class Lim/doit/pro/activity/DailyPlanSettingsActivity$2;
.super Ljava/lang/Object;
.source "DailyPlanSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyPlanSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$2;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$2;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$2(Lim/doit/pro/activity/DailyPlanSettingsActivity;Landroid/view/View;)V

    .line 178
    return-void
.end method
