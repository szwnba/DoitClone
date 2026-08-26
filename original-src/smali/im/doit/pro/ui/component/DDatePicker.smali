.class public Lim/doit/pro/ui/component/DDatePicker;
.super Landroid/widget/LinearLayout;
.source "DDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;
    }
.end annotation


# instance fields
.field private isInit:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/util/Calendar;

.field private mDateListener:Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

.field private mMinDate:Ljava/util/Calendar;

.field private mSelectedDate:Ljava/util/Calendar;

.field private selectedCell:Landroid/view/View;

.field private topbarBtnsWrap:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0, v0}, Lim/doit/pro/ui/component/DDatePicker;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Calendar;
    .param p3, "defaultDate"    # Ljava/util/Calendar;
    .param p4, "minDate"    # Ljava/util/Calendar;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DDatePicker;->isInit:Z

    .line 47
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DDatePicker;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {p4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 49
    invoke-virtual {p0, p2, p3}, Lim/doit/pro/ui/component/DDatePicker;->setCurrentDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DDatePicker;)Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDateListener:Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DDatePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DDatePicker;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lim/doit/pro/ui/component/DDatePicker;->callback()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/DDatePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/DDatePicker;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DDatePicker;->setViewDate(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/DDatePicker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DDatePicker;->onDateCellSelected(Landroid/view/View;)V

    return-void
.end method

.method private callback()V
    .locals 5

    .prologue
    .line 354
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDateListener:Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDateListener:Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 356
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 357
    iget-object v3, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 355
    invoke-interface {v0, v1, v2, v3}, Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;->selectDate(III)V

    .line 359
    :cond_0
    return-void
.end method

.method private getDateCellView(Landroid/widget/LinearLayout$LayoutParams;ILandroid/widget/LinearLayout;)Landroid/view/View;
    .locals 4
    .param p1, "dateCellParams"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p2, "i"    # I
    .param p3, "rowView"    # Landroid/widget/LinearLayout;

    .prologue
    .line 259
    iget-boolean v1, p0, Lim/doit/pro/ui/component/DDatePicker;->isInit:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->layoutInflater:Landroid/view/LayoutInflater;

    .line 261
    const v2, 0x7f030073

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "dateCell":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :goto_0
    return-object v0

    .line 264
    .end local v0    # "dateCell":Landroid/view/View;
    :cond_0
    rem-int/lit8 v1, p2, 0x7

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "dateCell":Landroid/view/View;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DDatePicker;->isInit:Z

    .line 91
    iput-object p1, p0, Lim/doit/pro/ui/component/DDatePicker;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mContext:Landroid/content/Context;

    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->layoutInflater:Landroid/view/LayoutInflater;

    .line 94
    invoke-direct {p0}, Lim/doit/pro/ui/component/DDatePicker;->initView()V

    .line 95
    return-void
.end method

.method private initDateCells()V
    .locals 14

    .prologue
    .line 215
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    const-string v12, "yyyy MM"

    invoke-static {v0, v12}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, "month":Ljava/lang/String;
    const v0, 0x7f0b015c

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 218
    .local v2, "date":Ljava/util/Calendar;
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 219
    const/4 v0, 0x5

    .line 220
    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v12

    .line 219
    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 223
    .local v7, "dayOfWeek":I
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 224
    .local v8, "maxDate":I
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    sub-int v3, v7, v0

    .line 225
    .local v3, "start":I
    if-gez v3, :cond_0

    .line 226
    add-int/lit8 v3, v3, 0x7

    .line 228
    :cond_0
    add-int v4, v8, v3

    .line 230
    .local v4, "end":I
    const/4 v0, 0x5

    neg-int v12, v3

    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->add(II)V

    .line 231
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    const/4 v0, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    .line 231
    invoke-direct {v6, v0, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 233
    .local v6, "dateCellParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v0, 0x2a

    if-lt v5, v0, :cond_1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DDatePicker;->isInit:Z

    .line 244
    return-void

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "row_"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v12, v5, 0x7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "id"

    invoke-static {v0, v12}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 235
    .local v10, "rowId":I
    invoke-virtual {p0, v10}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 236
    .local v11, "rowView":Landroid/widget/LinearLayout;
    invoke-direct {p0, v6, v5, v11}, Lim/doit/pro/ui/component/DDatePicker;->getDateCellView(Landroid/widget/LinearLayout$LayoutParams;ILandroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "dateCellView":Landroid/view/View;
    invoke-direct {p0, v1, v2}, Lim/doit/pro/ui/component/DDatePicker;->setDateCellViewContent(Landroid/view/View;Ljava/util/Calendar;)V

    move-object v0, p0

    .line 238
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ui/component/DDatePicker;->setDateTextViewContent(Landroid/view/View;Ljava/util/Calendar;III)V

    .line 239
    iget-boolean v0, p0, Lim/doit/pro/ui/component/DDatePicker;->isInit:Z

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x5

    const/4 v12, 0x1

    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method private initDefaultDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "defaultDate"    # Ljava/util/Calendar;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    .line 71
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mContext:Landroid/content/Context;

    const v1, 0x7f030072

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    const v0, 0x7f0b0158

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->topbarBtnsWrap:Landroid/view/View;

    .line 100
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$1;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$2;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$3;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0b015a

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$4;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$4;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0b015e

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$5;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$5;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0b015b

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$6;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$6;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v0, 0x7f0b015d

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    new-instance v1, Lim/doit/pro/ui/component/DDatePicker$7;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DDatePicker$7;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lim/doit/pro/ui/component/DDatePicker;->initWeekBar()V

    .line 195
    return-void
.end method

.method private initWeekBar()V
    .locals 8

    .prologue
    .line 198
    const v5, 0x7f0b015f

    invoke-virtual {p0, v5}, Lim/doit/pro/ui/component/DDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 199
    .local v3, "weekBar":Landroid/widget/LinearLayout;
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    .line 200
    .local v0, "dayOfWeekStart":I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 201
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    .line 202
    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 201
    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 203
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_0

    .line 212
    return-void

    .line 204
    :cond_0
    iget-object v5, p0, Lim/doit/pro/ui/component/DDatePicker;->layoutInflater:Landroid/view/LayoutInflater;

    .line 205
    const v6, 0x7f030075

    const/4 v7, 0x0

    .line 204
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 206
    .local v4, "weekView":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    sget-object v5, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_SHORT_FOR_WIDGET:[I

    .line 209
    add-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    rem-int/lit8 v6, v6, 0x7

    .line 208
    aget v5, v5, v6

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onDateCellSelected(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->selectedCell:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->selectedCell:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 297
    :cond_0
    iput-object p1, p0, Lim/doit/pro/ui/component/DDatePicker;->selectedCell:Landroid/view/View;

    .line 298
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->selectedCell:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    const-string v3, "yyyy/MM/dd"

    .line 299
    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 301
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 302
    .local v1, "diffMonth":I
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lim/doit/pro/utils/DateUtils;->diffMonth(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 305
    :cond_1
    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    .line 306
    invoke-direct {p0}, Lim/doit/pro/ui/component/DDatePicker;->callback()V

    .line 307
    if-eqz v1, :cond_2

    .line 308
    iget-object v2, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/DDatePicker;->setCurrentDate(Ljava/util/Calendar;)V

    .line 310
    :cond_2
    return-void
.end method

.method private setCellBackGround(Ljava/util/Calendar;Landroid/view/View;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "dateCell"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iput-object p2, p0, Lim/doit/pro/ui/component/DDatePicker;->selectedCell:Landroid/view/View;

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private setCellClickListener(Landroid/view/View;Z)V
    .locals 1
    .param p1, "dateCell"    # Landroid/view/View;
    .param p2, "isBeforeMinDate"    # Z

    .prologue
    .line 278
    if-eqz p2, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 283
    new-instance v0, Lim/doit/pro/ui/component/DDatePicker$8;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/DDatePicker$8;-><init>(Lim/doit/pro/ui/component/DDatePicker;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setCellTextColor(Landroid/widget/TextView;Ljava/util/Calendar;III)V
    .locals 4
    .param p1, "dateTextView"    # Landroid/widget/TextView;
    .param p2, "date"    # Ljava/util/Calendar;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "i"    # I

    .prologue
    const v3, 0x7f0800bd

    const v2, 0x7f08006a

    const/4 v0, 0x1

    .line 322
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mMinDate:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 322
    invoke-static {p2, v1, v0}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    .local v0, "isBeforeMinDate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 325
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 326
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    :goto_1
    return-void

    .line 322
    .end local v0    # "isBeforeMinDate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    .restart local v0    # "isBeforeMinDate":Z
    :cond_1
    const v1, 0x7f08006b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 329
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 332
    :cond_2
    if-lt p5, p3, :cond_5

    if-ge p5, p4, :cond_5

    .line 334
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {p2, v1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_3

    .line 337
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getColors(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 336
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 340
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 345
    :cond_4
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getColors(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 344
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 349
    :cond_5
    const v1, 0x7f08006c

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 348
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private setDateCellViewContent(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "dateCell"    # Landroid/view/View;
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 270
    const-string v1, "yyyy/MM/dd"

    invoke-static {p2, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0, p2, p1}, Lim/doit/pro/ui/component/DDatePicker;->setCellBackGround(Ljava/util/Calendar;Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mMinDate:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lim/doit/pro/ui/component/DDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 272
    invoke-static {p2, v1, v0}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    .local v0, "isBeforeMinDate":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/DDatePicker;->setCellClickListener(Landroid/view/View;Z)V

    .line 275
    return-void

    .line 272
    .end local v0    # "isBeforeMinDate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDateTextViewContent(Landroid/view/View;Ljava/util/Calendar;III)V
    .locals 6
    .param p1, "dateCell"    # Landroid/view/View;
    .param p2, "date"    # Ljava/util/Calendar;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "i"    # I

    .prologue
    .line 314
    .line 315
    const v0, 0x7f0b0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 314
    check-cast v1, Landroid/widget/TextView;

    .line 316
    .local v1, "dateTextView":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 317
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ui/component/DDatePicker;->setCellTextColor(Landroid/widget/TextView;Ljava/util/Calendar;III)V

    .line 318
    return-void
.end method

.method private setViewDate(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 86
    invoke-direct {p0}, Lim/doit/pro/ui/component/DDatePicker;->initDateCells()V

    .line 87
    return-void
.end method


# virtual methods
.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/ui/component/DDatePicker;->setCurrentDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 54
    return-void
.end method

.method public setCurrentDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "defaultDate"    # Ljava/util/Calendar;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    .line 59
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    :goto_0
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/DDatePicker;->initDefaultDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 64
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DDatePicker;->setViewDate(Ljava/util/Calendar;)V

    .line 65
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->mSelectedDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public setDisplayTopbarBtns(Z)V
    .locals 2
    .param p1, "display"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->topbarBtnsWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DDatePicker;->topbarBtnsWrap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnSelectDateListener(Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

    .prologue
    .line 34
    iput-object p1, p0, Lim/doit/pro/ui/component/DDatePicker;->mDateListener:Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;

    .line 35
    return-void
.end method
