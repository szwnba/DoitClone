.class Lim/doit/pro/activity/StartDailyReviewDialog$2;
.super Ljava/lang/Object;
.source "StartDailyReviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/StartDailyReviewDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/StartDailyReviewDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/StartDailyReviewDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/StartDailyReviewDialog$2;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 74
    .local v2, "reviewTime":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderSnoozeTime()I

    move-result v4

    .line 75
    .local v4, "snoozeTime":I
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 76
    iget-object v5, p0, Lim/doit/pro/activity/StartDailyReviewDialog$2;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    const-string v8, "alarm"

    invoke-virtual {v5, v8}, Lim/doit/pro/activity/StartDailyReviewDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 77
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    .line 78
    const-string v5, "im.doit.pro.receiver.StartTodayDailyReviewReceiver"

    .line 77
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, "service":Landroid/content/Intent;
    iget-object v5, p0, Lim/doit/pro/activity/StartDailyReviewDialog$2;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 82
    const/16 v8, 0x259

    .line 83
    const/high16 v9, 0x10000000

    .line 80
    invoke-static {v5, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 84
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 85
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 86
    .local v6, "triggerAtMillis":J
    invoke-virtual {v0, v10, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 89
    const v5, 0x7f0c0123

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 88
    invoke-static {v5, v8}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/ToastUtils;->show(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lim/doit/pro/activity/StartDailyReviewDialog$2;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    invoke-virtual {v5}, Lim/doit/pro/activity/StartDailyReviewDialog;->finish()V

    .line 92
    return-void
.end method
