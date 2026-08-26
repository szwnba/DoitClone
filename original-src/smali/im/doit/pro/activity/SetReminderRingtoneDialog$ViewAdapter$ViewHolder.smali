.class abstract Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SetReminderRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    .line 222
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 223
    return-void
.end method


# virtual methods
.method public abstract setViewContent(Ljava/lang/String;ZLjava/lang/String;)V
.end method
