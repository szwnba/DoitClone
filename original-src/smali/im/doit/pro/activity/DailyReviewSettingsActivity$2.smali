.class Lim/doit/pro/activity/DailyReviewSettingsActivity$2;
.super Ljava/lang/Object;
.source "DailyReviewSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->access$2(Lim/doit/pro/activity/DailyReviewSettingsActivity;Landroid/view/View;)V

    .line 177
    return-void
.end method
