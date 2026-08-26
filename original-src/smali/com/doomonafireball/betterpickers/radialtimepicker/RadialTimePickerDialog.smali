.class public Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
.super Landroid/app/DialogFragment;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;,
        Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;,
        Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;,
        Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final AMPM_INDEX:I = 0x2

.field public static final ENABLE_PICKER_INDEX:I = 0x3

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "dark_theme"

.field private static final KEY_HOUR_OF_DAY:Ljava/lang/String; = "hour_of_day"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_MINUTE:Ljava/lang/String; = "minute"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDimissCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoneText:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;I)Z
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;IZZZ)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$3(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Z
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;Z)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;I)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 594
    iget-boolean v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 595
    :cond_0
    iget-boolean v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    :cond_1
    :goto_0
    return v1

    .line 599
    :cond_2
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 601
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 605
    :cond_3
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 606
    .local v0, "val":I
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 608
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 610
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 611
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 613
    :cond_4
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move v1, v2

    .line 616
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 656
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 665
    iput-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    .line 666
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 668
    .local v0, "values":[I
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setTime(II)V

    .line 669
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setAmOrPm(I)V

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 674
    .end local v0    # "values":[I
    :cond_1
    if-eqz p1, :cond_2

    .line 675
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateDisplay(Z)V

    .line 676
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 678
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    .line 832
    const/4 v6, 0x7

    .line 833
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 834
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 835
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 836
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 837
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 838
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 839
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 840
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 841
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 844
    .local v15, "k9":I
    new-instance v20, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 847
    new-instance v16, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 848
    .local v16, "minuteFirstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    new-instance v17, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 850
    .local v17, "minuteSecondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v16 .. v17}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 853
    new-instance v4, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 854
    .local v4, "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 857
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 858
    .local v18, "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 860
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 863
    new-instance v19, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 865
    .local v19, "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 868
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 869
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 871
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 874
    new-instance v4, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 875
    .restart local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 878
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 879
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 881
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 884
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v10, v20, v21

    const/16 v21, 0x1

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 885
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 887
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 890
    new-instance v4, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    const/16 v21, 0x3

    aput v12, v20, v21

    const/16 v21, 0x4

    aput v13, v20, v21

    const/16 v21, 0x5

    aput v14, v20, v21

    const/16 v21, 0x6

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 891
    .restart local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 893
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 956
    .end local v16    # "minuteFirstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    .end local v17    # "minuteSecondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    :goto_0
    return-void

    .line 897
    .end local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    .end local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    :cond_0
    new-instance v3, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 900
    .local v3, "ampm":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    new-instance v4, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 901
    .restart local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 903
    invoke-virtual {v4, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 906
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 907
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 909
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 912
    new-instance v19, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 913
    .restart local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 915
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 919
    new-instance v5, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 920
    .local v5, "fourthDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 922
    invoke-virtual {v5, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 925
    new-instance v19, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 926
    .restart local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 928
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 931
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 932
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 935
    new-instance v19, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 936
    .restart local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 938
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 941
    new-instance v4, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    const/16 v21, 0x2

    aput v10, v20, v21

    const/16 v21, 0x3

    aput v11, v20, v21

    const/16 v21, 0x4

    aput v12, v20, v21

    const/16 v21, 0x5

    aput v13, v20, v21

    const/16 v21, 0x6

    aput v14, v20, v21

    const/16 v21, 0x7

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 942
    .restart local v4    # "firstDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 944
    invoke-virtual {v4, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 947
    new-instance v18, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 948
    .restart local v18    # "secondDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 951
    new-instance v19, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;[I)V

    .line 952
    .restart local v19    # "thirdDigit":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    .line 954
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->addChild(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 797
    iget v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 799
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 802
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 818
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_1
    :goto_1
    if-nez p1, :cond_6

    .line 819
    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmKeyCode:I

    .line 824
    :cond_2
    :goto_2
    return v5

    .line 803
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_3
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 804
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 805
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_5

    .line 806
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 808
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_4

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 809
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmKeyCode:I

    .line 810
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmKeyCode:I

    goto :goto_1

    .line 812
    :cond_4
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_6
    if-ne p1, v9, :cond_2

    .line 821
    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 12
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 756
    const/4 v0, -0x1

    .line 757
    .local v0, "amOrPm":I
    const/4 v6, 0x1

    .line 758
    .local v6, "startIndex":I
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 759
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 760
    .local v3, "keyCode":I
    invoke-direct {p0, v11}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_2

    .line 761
    const/4 v0, 0x0

    .line 765
    :cond_0
    :goto_0
    const/4 v6, 0x2

    .line 767
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 768
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 769
    .local v1, "hour":I
    move v2, v6

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v2, v8, :cond_3

    .line 788
    const/4 v8, 0x3

    new-array v5, v8, [I

    aput v1, v5, v11

    aput v4, v5, v10

    const/4 v8, 0x2

    aput v0, v5, v8

    .line 789
    .local v5, "ret":[I
    return-object v5

    .line 762
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v5    # "ret":[I
    .restart local v3    # "keyCode":I
    :cond_2
    invoke-direct {p0, v10}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 763
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    :cond_3
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v7

    .line 771
    .local v7, "val":I
    if-ne v2, v6, :cond_5

    .line 772
    move v4, v7

    .line 769
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 773
    :cond_5
    add-int/lit8 v8, v6, 0x1

    if-ne v2, v8, :cond_6

    .line 774
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v4, v8

    .line 775
    if-eqz p1, :cond_4

    if-nez v7, :cond_4

    .line 776
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v10

    goto :goto_2

    .line 778
    :cond_6
    add-int/lit8 v8, v6, 0x2

    if-ne v2, v8, :cond_7

    .line 779
    move v1, v7

    .line 780
    goto :goto_2

    :cond_7
    add-int/lit8 v8, v6, 0x3

    if-ne v2, v8, :cond_4

    .line 781
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v1, v8

    .line 782
    if-eqz p1, :cond_4

    if-nez v7, :cond_4

    .line 783
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v11

    goto :goto_2
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 720
    packed-switch p1, :pswitch_data_0

    .line 742
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 722
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 724
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 726
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 728
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 730
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 732
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 734
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 736
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 738
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 740
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 638
    iget-boolean v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_2

    .line 641
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 642
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_1

    aget v3, v0, v1

    if-ltz v3, :cond_1

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1

    .line 646
    .end local v0    # "values":[I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_1
    move v1, v2

    .line 642
    goto :goto_0

    .line 646
    .end local v0    # "values":[I
    :cond_2
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 647
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 646
    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mLegalTimesTree:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    .line 625
    .local v1, "node":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 631
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 625
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    .local v0, "keyCode":I
    invoke-virtual {v1, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;->canReach(I)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$Node;

    move-result-object v1

    .line 627
    if-nez v1, :cond_0

    .line 628
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
    .locals 1
    .param p0, "callback"    # Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 137
    new-instance v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-direct {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;-><init>()V

    .line 138
    .local v0, "ret":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->initialize(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 139
    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 509
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->dismiss()V

    .line 572
    :cond_1
    :goto_0
    return v2

    .line 512
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 513
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 514
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 519
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_6

    .line 520
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 521
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->finishKbMode(Z)V

    .line 526
    :cond_4
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_5

    .line 527
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    .line 528
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v4

    iget-object v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v5

    .line 527
    invoke-interface {v3, p0, v4, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;II)V

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->dismiss()V

    goto :goto_0

    .line 532
    :cond_6
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    .line 533
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 534
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 535
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 537
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 538
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    .line 544
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    .line 545
    iget-object v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 544
    invoke-static {v4, v5}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 546
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 572
    goto :goto_0

    .line 539
    .restart local v0    # "deleted":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 540
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    .line 541
    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 542
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_9
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 549
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/16 v4, 0x8

    if-eq p1, v4, :cond_b

    .line 550
    const/16 v4, 0x9

    if-eq p1, v4, :cond_b

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    .line 551
    const/16 v4, 0xb

    if-eq p1, v4, :cond_b

    const/16 v4, 0xc

    if-eq p1, v4, :cond_b

    .line 552
    const/16 v4, 0xd

    if-eq p1, v4, :cond_b

    const/16 v4, 0xe

    if-eq p1, v4, :cond_b

    .line 553
    const/16 v4, 0xf

    if-eq p1, v4, :cond_b

    const/16 v4, 0x10

    if-eq p1, v4, :cond_b

    .line 554
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_7

    .line 555
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-direct {p0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 556
    :cond_b
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_d

    .line 557
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    if-nez v3, :cond_c

    .line 559
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 562
    :cond_c
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 563
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 567
    :cond_d
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    invoke-direct {p0, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    .line 468
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6, p1, p2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 471
    if-nez p1, :cond_3

    .line 472
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    .line 473
    .local v1, "hours":I
    iget-boolean v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v6, :cond_0

    .line 474
    rem-int/lit8 v1, v1, 0xc

    .line 476
    :cond_0
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    if-eqz p4, :cond_1

    .line 478
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v7, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 490
    .end local v1    # "hours":I
    .local v2, "labelToAnimate":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectedColor:I

    .line 491
    .local v0, "hourColor":I
    :goto_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectedColor:I

    .line 492
    .local v3, "minuteColor":I
    :goto_2
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v6, v7}, Lcom/doomonafireball/betterpickers/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    .line 496
    .local v5, "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz p3, :cond_2

    .line 497
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 499
    :cond_2
    invoke-virtual {v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 500
    return-void

    .line 482
    .end local v0    # "hourColor":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    .end local v3    # "minuteColor":I
    .end local v5    # "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 483
    .local v4, "minutes":I
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 484
    if-eqz p4, :cond_4

    .line 485
    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v7, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 487
    :cond_4
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_0

    .line 490
    .end local v4    # "minutes":I
    :cond_5
    iget v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mUnselectedColor:I

    goto :goto_1

    .line 491
    .restart local v0    # "hourColor":I
    :cond_6
    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mUnselectedColor:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 437
    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_2

    .line 438
    const-string v0, "%02d"

    .line 447
    .local v0, "format":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    if-eqz p2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 453
    :cond_1
    return-void

    .line 440
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "%d"

    .line 441
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 442
    if-nez p1, :cond_0

    .line 443
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 456
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 457
    const/4 p1, 0x0

    .line 459
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    .line 586
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 587
    invoke-direct {p0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateDisplay(Z)V

    .line 589
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1, "amOrPm"    # I

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 12
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 688
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 689
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    .line 690
    .local v1, "hour":I
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 691
    .local v4, "minute":I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setHour(IZ)V

    .line 692
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setMinute(I)V

    .line 693
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_0

    .line 694
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    .line 696
    :cond_0
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 697
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 717
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .line 694
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    .line 700
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v7

    .line 701
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .line 702
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .line 703
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 705
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 707
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v9, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v9, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    iget-boolean v8, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    .line 714
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 701
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 702
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .line 704
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 706
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method


# virtual methods
.method public initialize(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1
    .param p1, "callback"    # Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    .line 146
    iput p2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 147
    iput p3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialMinute:I

    .line 148
    iput-boolean p4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    .line 149
    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    .line 150
    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    .line 151
    return-void
.end method

.method public isThemeDark()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 197
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialMinute:I

    .line 198
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    .line 199
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    .line 200
    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    .line 202
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 211
    :cond_0
    const v2, 0x7f0300a8

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 212
    .local v24, "view":Landroid/view/View;
    new-instance v17, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;)V

    .line 213
    .local v17, "keyboardListener":Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$KeyboardListener;
    const v2, 0x7f0b01c4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 216
    .local v21, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c0267

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 217
    const v2, 0x7f0c0269

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 218
    const v2, 0x7f0c0268

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 219
    const v2, 0x7f0c026a

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_4

    const v2, 0x7f080098

    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectedColor:I

    .line 221
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_5

    const v2, 0x7f08008e

    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mUnselectedColor:I

    .line 223
    const v2, 0x7f0b01bf

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 225
    const v2, 0x7f0b01bd

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 226
    const v2, 0x7f0b01c0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 227
    const v2, 0x7f0b01c1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 229
    const v2, 0x7f0b01c3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 231
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "amPmTexts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    .line 233
    const/4 v2, 0x1

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    .line 235
    new-instance v2, Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    .line 237
    const v2, 0x7f0b01c6

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setOnValueSelectedListener(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 241
    move-object/from16 v0, p0

    iget v6, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    .line 240
    invoke-virtual/range {v2 .. v7}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/doomonafireball/betterpickers/HapticFeedbackController;IIZ)V

    .line 243
    const/4 v10, 0x0

    .line 244
    .local v10, "currentItemShowing":I
    if-eqz p3, :cond_1

    .line 245
    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 248
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->invalidate()V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v3, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v3, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v2, 0x7f0b01c8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    new-instance v3, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    const v2, 0x7f0b01c2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 289
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 292
    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v20, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    const v2, 0x7f0b01be

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 296
    .local v22, "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .end local v20    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAllowAutoAdvance:Z

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setHour(IZ)V

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setMinute(I)V

    .line 321
    const v2, 0x7f0c0265

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 322
    const v2, 0x7f0c026b

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPlaceholderText:C

    .line 324
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mPmKeyCode:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmKeyCode:I

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->generateLegalTimesTree()V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v2, :cond_8

    .line 327
    const-string v2, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 328
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryStartingKbMode(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 335
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    invoke-virtual {v2, v3, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setTheme(Landroid/content/Context;Z)V

    .line 337
    const v2, 0x7f08008e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 338
    .local v25, "white":I
    const v2, 0x7f08008f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 339
    .local v9, "circleBackground":I
    const v2, 0x7f080090

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 340
    .local v19, "line":I
    const v2, 0x7f080094

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 341
    .local v23, "timeDisplay":I
    const v2, 0x7f0800c0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 342
    .local v16, "doneTextColor":Landroid/content/res/ColorStateList;
    const v15, 0x7f02005e

    .line 344
    .local v15, "doneBackground":I
    const v2, 0x7f08009b

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 345
    .local v13, "darkGray":I
    const v2, 0x7f08009a

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 346
    .local v18, "lightGray":I
    const v2, 0x7f08009c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 347
    .local v14, "darkLine":I
    const v2, 0x7f0800c1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 348
    .local v12, "darkDoneTextColor":Landroid/content/res/ColorStateList;
    const v11, 0x7f02005f

    .line 351
    .local v11, "darkDoneBackground":I
    const v2, 0x7f0b01c5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_9

    move v2, v13

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 352
    const v2, 0x7f0b01bb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_a

    .end local v13    # "darkGray":I
    :goto_5
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    const v2, 0x7f0b01be

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_b

    move/from16 v3, v25

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    const v2, 0x7f0b01c3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_c

    .end local v25    # "white":I
    :goto_7
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    const v2, 0x7f0b01c7

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_d

    .end local v14    # "darkLine":I
    :goto_8
    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_e

    .end local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    :goto_9
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_f

    .end local v18    # "lightGray":I
    :goto_a
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setBackgroundColor(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_10

    .end local v11    # "darkDoneBackground":I
    :goto_b
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 359
    return-object v24

    .line 220
    .end local v8    # "amPmTexts":[Ljava/lang/String;
    .end local v9    # "circleBackground":I
    .end local v10    # "currentItemShowing":I
    .end local v15    # "doneBackground":I
    .end local v16    # "doneTextColor":Landroid/content/res/ColorStateList;
    .end local v19    # "line":I
    .end local v23    # "timeDisplay":I
    :cond_4
    const v2, 0x7f080096

    goto/16 :goto_0

    .line 221
    :cond_5
    const v2, 0x7f080094

    goto/16 :goto_1

    .line 298
    .restart local v8    # "amPmTexts":[Ljava/lang/String;
    .restart local v10    # "currentItemShowing":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_7

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v3, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 299
    :cond_7
    const/4 v2, 0x1

    goto :goto_c

    .line 330
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_3

    .restart local v9    # "circleBackground":I
    .restart local v11    # "darkDoneBackground":I
    .restart local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    .restart local v13    # "darkGray":I
    .restart local v14    # "darkLine":I
    .restart local v15    # "doneBackground":I
    .restart local v16    # "doneTextColor":Landroid/content/res/ColorStateList;
    .restart local v18    # "lightGray":I
    .restart local v19    # "line":I
    .restart local v23    # "timeDisplay":I
    .restart local v25    # "white":I
    :cond_9
    move/from16 v2, v25

    .line 351
    goto/16 :goto_4

    :cond_a
    move/from16 v13, v25

    .line 352
    goto/16 :goto_5

    .end local v13    # "darkGray":I
    :cond_b
    move/from16 v3, v23

    .line 353
    goto/16 :goto_6

    :cond_c
    move/from16 v25, v23

    .line 354
    goto/16 :goto_7

    .end local v25    # "white":I
    :cond_d
    move/from16 v14, v19

    .line 355
    goto/16 :goto_8

    .end local v14    # "darkLine":I
    :cond_e
    move-object/from16 v12, v16

    .line 356
    goto :goto_9

    .end local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    :cond_f
    move/from16 v18, v9

    .line 357
    goto :goto_a

    .end local v18    # "lightGray":I
    :cond_10
    move v11, v15

    .line 358
    goto :goto_b
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 185
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDimissCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDimissCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 371
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->stop()V

    .line 372
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->start()V

    .line 366
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    const-string v0, "minute"

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    iget-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 403
    :cond_0
    const-string v0, "dark_theme"

    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    :cond_1
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 412
    if-nez p1, :cond_2

    .line 413
    invoke-direct {p0, p2, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setHour(IZ)V

    .line 414
    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "announcement":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 416
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/doomonafireball/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 433
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 419
    .restart local v0    # "announcement":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    .line 423
    invoke-direct {p0, p2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->setMinute(I)V

    .line 424
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTimePicker:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 425
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 426
    invoke-direct {p0, p2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 427
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 429
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 431
    :cond_5
    invoke-direct {p0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->finishKbMode(Z)V

    goto :goto_1
.end method

.method public setDoneText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDoneText:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setOnDismissListener(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;)V
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mDimissCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnDialogDismissListener;

    .line 166
    return-void
.end method

.method public setOnTimeSetListener(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mCallback:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    .line 170
    return-void
.end method

.method public setStartTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 174
    iput p2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInitialMinute:I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mInKbMode:Z

    .line 176
    return-void
.end method

.method public setThemeDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mThemeDark:Z

    .line 158
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->mHapticFeedbackController:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 376
    return-void
.end method
