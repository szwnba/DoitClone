.class public Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;
.super Ljava/lang/Object;
.source "SelectRepeaterYearlyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;,
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUntilClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUpClickListener;
    }
.end annotation


# static fields
.field private static final MAX_CYCLE:I = 0x9

.field private static final MIN_CYCLE:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCycleTV:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mDownBtn:Landroid/widget/ImageButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOKBtn:Landroid/widget/Button;

.field private mOnSelectYearlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

.field private mRepeater:Lim/doit/pro/model/Repeater;

.field private mStartAt:Ljava/util/Calendar;

.field private mUnitTV:Landroid/widget/TextView;

.field private mUntilBtn:Landroid/widget/Button;

.field private mUpBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mActivity:Landroid/app/Activity;

    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/model/Repeater;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->setCycleViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mOnSelectYearlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->setUntilViewContent()V

    return-void
.end method

.method private initData(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 71
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mStartAt:Ljava/util/Calendar;

    .line 73
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mStartAt:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    if-eqz v1, :cond_0

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    new-instance v1, Lim/doit/pro/model/Repeater;

    invoke-direct {v1}, Lim/doit/pro/model/Repeater;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 76
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Repeater;->setMode(Lim/doit/pro/model/enums/RepeaterMode;)V

    .line 77
    new-instance v0, Lim/doit/pro/model/RepeaterYearly;

    invoke-direct {v0}, Lim/doit/pro/model/RepeaterYearly;-><init>()V

    .line 78
    .local v0, "yearly":Lim/doit/pro/model/RepeaterYearly;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/RepeaterYearly;->setCycle(I)V

    .line 79
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mStartAt:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/RepeaterUtils;->convert2RepeaterDate(Ljava/util/Calendar;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/RepeaterYearly;->setDayOfMonth(I)V

    .line 80
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mStartAt:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/RepeaterYearly;->setMonth(I)V

    .line 81
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1, v0}, Lim/doit/pro/model/Repeater;->setYearly(Lim/doit/pro/model/RepeaterYearly;)V

    .line 83
    .end local v0    # "yearly":Lim/doit/pro/model/RepeaterYearly;
    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUpBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUpClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUpClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUpClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDownBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mOKBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUntilBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUntilClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUntilClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnUntilClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    const v0, 0x7f0b01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mCycleTV:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0b01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUnitTV:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0b01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUpBtn:Landroid/widget/ImageButton;

    .line 89
    const v0, 0x7f0b01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDownBtn:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mCancelBtn:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mOKBtn:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0b01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUntilBtn:Landroid/widget/Button;

    .line 93
    return-void
.end method

.method private initViewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUnitTV:Landroid/widget/TextView;

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->setCycleViewContent()V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->setUntilViewContent()V

    .line 100
    return-void
.end method

.method private setCycleViewContent()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mCycleTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getYearly()Lim/doit/pro/model/RepeaterYearly;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterYearly;->getCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method private setUntilViewContent()V
    .locals 3

    .prologue
    .line 107
    const v1, 0x7f0c00a8

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "formatText":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mUntilBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method public setOnSelectYearlyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mOnSelectYearlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

    .line 50
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->initData(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V

    .line 59
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDialog:Landroid/app/Dialog;

    .line 60
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030060

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->initViewContent(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->initListener()V

    .line 67
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 68
    return-void
.end method
