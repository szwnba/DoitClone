.class public Lim/doit/pro/ui/component/DTimePicker;
.super Landroid/widget/LinearLayout;
.source "DTimePicker.java"

# interfaces
.implements Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;
    }
.end annotation


# instance fields
.field private is12Hour:Z

.field private mActivity:Landroid/app/Activity;

.field private mSelectedDate:Ljava/util/Calendar;

.field private mTimeListener:Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;

.field private timeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DTimePicker;->is12Hour:Z

    .line 42
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DTimePicker;->init(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {p0, p2}, Lim/doit/pro/ui/component/DTimePicker;->setCurrentDate(Ljava/util/Calendar;)V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DTimePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DTimePicker;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lim/doit/pro/ui/component/DTimePicker;->is12Hour:Z

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DTimePicker;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iput-object p1, p0, Lim/doit/pro/ui/component/DTimePicker;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-direct {p0}, Lim/doit/pro/ui/component/DTimePicker;->initData()V

    .line 57
    invoke-direct {p0}, Lim/doit/pro/ui/component/DTimePicker;->initView()V

    .line 58
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->is12Hour()Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DTimePicker;->is12Hour:Z

    .line 62
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0300a0

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->timeTV:Landroid/widget/TextView;

    .line 67
    new-instance v0, Lim/doit/pro/ui/component/DTimePicker$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/DTimePicker$1;-><init>(Lim/doit/pro/ui/component/DTimePicker;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DTimePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private setTimeViewContent()V
    .locals 4

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    .local v0, "timeText":Ljava/lang/String;
    iget-boolean v1, p0, Lim/doit/pro/ui/component/DTimePicker;->is12Hour:Z

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    const-string v2, "KK:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->isAm(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0c0231

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker;->timeTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0c0232

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onTimeSet(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;II)V
    .locals 2
    .param p1, "dialog"    # Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 100
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-direct {p0}, Lim/doit/pro/ui/component/DTimePicker;->setTimeViewContent()V

    .line 102
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;

    invoke-interface {v0, p2, p3}, Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;->selectTime(II)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lim/doit/pro/ui/component/DTimePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/DTimePicker;->setTimeViewContent()V

    .line 52
    return-void
.end method

.method public setOnSelectTimeListener(Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;

    .prologue
    .line 33
    iput-object p1, p0, Lim/doit/pro/ui/component/DTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;

    .line 34
    return-void
.end method
