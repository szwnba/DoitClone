.class abstract Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewHolder"
.end annotation


# instance fields
.field public reminderTimeTV:Landroid/widget/TextView;

.field public switchBtn:Lim/doit/pro/ui/component/DSwitch;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    .line 335
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 336
    return-void
.end method


# virtual methods
.method public abstract setViewContent(ILim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
.end method
