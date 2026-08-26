.class public Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;
.super Ljava/lang/Object;
.source "DSetPlanReviewRemindTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;
    }
.end annotation


# instance fields
.field private closeBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mDialog:Landroid/app/Dialog;

.field private mDoneListener:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;

.field private mGap:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTimeTV:Landroid/widget/TextView;

.field private nextBtn:Landroid/widget/ImageButton;

.field private preBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x1e

    iput v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mGap:I

    .line 43
    iput-object p1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mGap:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->setDateViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->callback()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->dismissDialog()V

    return-void
.end method

.method private buildDialog()V
    .locals 5

    .prologue
    .line 60
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDialog:Landroid/app/Dialog;

    .line 61
    iget-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    const v2, 0x7f030091

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->initViewContent()V

    .line 65
    iget-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 67
    return-void
.end method

.method private callback()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDoneListener:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDoneListener:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;

    iget-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 127
    iget-object v2, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 126
    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;->done(II)V

    .line 129
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    :cond_0
    return-void
.end method

.method private formatTime(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "str":Ljava/lang/String;
    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v1, v2}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method private initData(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    .line 55
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 57
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->preBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$1;-><init>(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->nextBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;-><init>(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->closeBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$3;-><init>(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    const v0, 0x7f0b0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mTimeTV:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0b00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->preBtn:Landroid/widget/ImageButton;

    .line 72
    const v0, 0x7f0b00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->nextBtn:Landroid/widget/ImageButton;

    .line 73
    const v0, 0x7f0b0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->closeBtn:Landroid/widget/Button;

    .line 74
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->setDateViewContent()V

    .line 78
    return-void
.end method

.method private setDateViewContent()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mTimeTV:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->formatTime(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 116
    return-void
.end method


# virtual methods
.method public setOnRemindTimeDoneListner(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->mDoneListener:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;

    .line 40
    return-void
.end method

.method public showDialog(II)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->initData(II)V

    .line 49
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->buildDialog()V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->initListener()V

    .line 51
    return-void
.end method
