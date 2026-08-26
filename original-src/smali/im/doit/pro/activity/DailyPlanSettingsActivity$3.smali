.class Lim/doit/pro/activity/DailyPlanSettingsActivity$3;
.super Ljava/lang/Object;
.source "DailyPlanSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyPlanSettingsActivity;->showRemindTimePicker(Landroid/view/View;)V
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$3;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(II)V
    .locals 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/16 v4, 0xa

    .line 209
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$3;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$0(Lim/doit/pro/activity/DailyPlanSettingsActivity;Z)V

    .line 210
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lim/doit/pro/model/User;->getDailyPlanningTimes()Ljava/util/ArrayList;

    move-result-object v1

    .line 212
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 213
    .local v0, "time":Ljava/lang/String;
    if-ge p1, v4, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    if-ge p2, v4, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$3;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$3(Lim/doit/pro/activity/DailyPlanSettingsActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$3;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$4(Lim/doit/pro/activity/DailyPlanSettingsActivity;)V

    .line 224
    return-void
.end method
